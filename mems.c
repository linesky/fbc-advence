#include <string.h>
void memcopy(char *dst,char *src,size_t sizes);
void memfill(char *dst,char ch,size_t sizes);
void memcopy(char *dst,char *src,size_t sizes){
	memcpy(dst,src,sizes);
}
void memfill(char *dst,char ch,size_t sizes){
	memset(dst,ch,sizes);
}
