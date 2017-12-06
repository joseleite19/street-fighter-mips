/* ********************************************************************** *
file: bmp2oac
usage: bmp2mif file <.bmp .mif.bin>
converte imagem .bmp em arquivo .mif para carregar na mem�ria da FPGA e .bin para o Mars
15/09/2017
 * ********************************************************************** */


#include <bits/stdc++.h>
using namespace std;

static unsigned char *texels;
static int width, height;

static unsigned char inv = 0xc7;

void readBmp(const char *filename){
	FILE *fd;
	fd = fopen(filename, "rb");
	if(fd == nullptr){
		printf("Error: fopen failed\n");
		return;
	}
	unsigned char header[54];
	// Read header
	fread(header, sizeof(unsigned char), 54, fd);
	// Capture dimensions
	width = *(int*)&header[18];
	height = *(int*)&header[22];
	int padding = 0;
	// Calculate padding
	while ((width * 3 + padding) % 4 != 0)padding++;
	// Compute new width, which includes padding
	int widthnew = width * 3 + padding;
	// Allocate memory to store image data (non-padded)
	texels = (unsigned char *)malloc(width * height * 3 * sizeof(unsigned char));
	if(texels == nullptr){
		printf("Error: Malloc failed\n");
		return;
	}
	// Allocate temporary memory to read widthnew size of data
	unsigned char* data = (unsigned char *)malloc(widthnew * sizeof (unsigned int));
	// Read row by row of data and remove padded data.
	int i,j;
	for(i = 0; i<height; i++){
		// Read widthnew length of data
		fread(data, sizeof(unsigned char), widthnew, fd);
		// Retain width length of data, and swizzle RB component.
		// BMP stores in BGR format, my usecase needs RGB format
		for(j = 0; j < width * 3; j += 3){
			int index = (i * width * 3) + (j);
			texels[index + 0] = data[j + 2];
			texels[index + 1] = data[j + 1];
			texels[index + 2] = data[j + 0];
			if(texels[index + 0] == 0x00 && texels[index + 1] == 0xff && texels[index + 2] == 0x00){
				texels[index + 0] = 0xff;
				texels[index + 1] = 0x00;
				texels[index + 2] = 0xff;
			}
		}
	}
	free(data);
	fclose(fd);
}

int main(int argc,char **argv){
	FILE *aout, *aoutbin, *aout2, *aoutbin2; /* the bitmap file 24 bits */
	int i,j,index;
	unsigned char r,g,b;

	if(argc < 2)exit(1);

	string inName,name;
	inName = argv[1];

	// cout << inName << endl;

	name = inName + ".bmp";
	// cout << name << endl;
	readBmp(name.c_str());

	// cout << "size:" << width << " x " << width << endl;

	name = "../../mif/sprites/" + inName + "_1.mif";
	// cout << name << endl;
	aout=fopen(name.c_str(),"w");
	name = "../../mif/sprites/" + inName + "_2.mif";
	// cout << name << endl;
	aout2=fopen(name.c_str(),"w");

	name = "../../bin/sprites/" + inName + "_1.bin";
	// cout << name << endl;
	aoutbin=fopen(name.c_str(),"wb");
	name = "../../bin/sprites/" + inName + "_2.bin";
	// cout << name << endl;
	aoutbin2=fopen(name.c_str(),"wb");

	fprintf(aout,"DEPTH = %d;\nWIDTH = 8;\nADDRESS_RADIX = HEX;\nDATA_RADIX = HEX;\nCONTENT\nBEGIN\n",320*height);
	fprintf(aout2,"DEPTH = %d;\nWIDTH = 8;\nADDRESS_RADIX = HEX;\nDATA_RADIX = HEX;\nCONTENT\nBEGIN\n",320*height);

	int cont=0;
	unsigned char hex,rq,bq,gq;

	unsigned int w = 320;
	unsigned int h = height;
	fwrite(&w,1,sizeof(unsigned int),aoutbin);
	fwrite(&h,1,sizeof(unsigned int),aoutbin);
	fwrite(&w,1,sizeof(unsigned int),aoutbin2);
	fwrite(&h,1,sizeof(unsigned int),aoutbin2);
	// cout << "sizeof(int) = " << sizeof(int) << endl;
	for(i=0;i<height;i++){
		fprintf(aout,"%05X : ",cont);
		fprintf(aout2,"%05X : ",cont);
		for(j=0;j<width;j++){
			index = ((height-1-i)*width + j)*3;
			r=texels[index + 0];
			g=texels[index + 1];
			b=texels[index + 2];

			rq=(unsigned char)(7.0*(float)r/(255.0));
			gq=(unsigned char)(7.0*(float)g/(255.0));
			bq=(unsigned char)(3.0*(float)b/(255.0));
			hex= bq<<6 | gq<<3 | rq;
			//if(cont<10) printf("HEX=%d %d %d : %02X\n",bq,gq,rq,hex);

			if(hex==0)fprintf(aout,"00");
			else fprintf(aout,"%02X",hex);

			fprintf(aout," ");

			fwrite(&hex,1,sizeof(unsigned char),aoutbin);
			cont++;
		}
		for(j=width-1;j>=0;j--){
			index = ((height-1-i)*width + j)*3;
			r=texels[index + 0];
			g=texels[index + 1];
			b=texels[index + 2];

			rq=(unsigned char)(7.0*(float)r/(255.0));
			gq=(unsigned char)(7.0*(float)g/(255.0));
			bq=(unsigned char)(3.0*(float)b/(255.0));
			hex= bq<<6 | gq<<3 | rq;
			//if(cont<10) printf("HEX=%d %d %d : %02X\n",bq,gq,rq,hex);

			if(hex==0)fprintf(aout2,"00");
			else fprintf(aout2,"%02X",hex);

			fprintf(aout2," ");

			fwrite(&hex,1,sizeof(unsigned char),aoutbin2);
		}
		for(j=width;j<320;j++){
			fprintf(aout,"%02X",inv);
			fprintf(aout2,"%02X",inv);

			if(j==319)fprintf(aout,";\n");
			else fprintf(aout," ");
			if(j==319)fprintf(aout2,";\n");
			else fprintf(aout2," ");

			fwrite(&inv,1,sizeof(unsigned char),aoutbin);
			fwrite(&inv,1,sizeof(unsigned char),aoutbin2);
			cont++;
		}
	}

	for(i=height;i<117;i++){
		fprintf(aout,"%05X : ",cont);
		fprintf(aout2,"%05X : ",cont);
		for(j=0;j<320;j++){
			fprintf(aout,"%02X",inv);
			fprintf(aout2,"%02X",inv);

			if(j==319)fprintf(aout,";\n");
			else fprintf(aout," ");
			if(j==319)fprintf(aout2,";\n");
			else fprintf(aout2," ");

			fwrite(&inv,1,sizeof(unsigned char),aoutbin);
			fwrite(&inv,1,sizeof(unsigned char),aoutbin2);
			cont++;
		}	
	}

	fprintf(aout,"\nEND;\n");
	fprintf(aout2,"\nEND;\n");
	fclose(aout);
	fclose(aout2);
	fclose(aoutbin);
	fclose(aoutbin2);

	return(0);
}
