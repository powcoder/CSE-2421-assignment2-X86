https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
/* BY SUBMITTING THIS FILE TO CARMEN, I CERTIFY THAT I HAVE PERFORMED ALL OF THE
** WORK TO CREATE THIS FILE AND/OR DETERMINE THE ANSWERS FOUND WITHIN THIS
** FILE MYSELF WITH NO ASSISTANCE FROM ANY PERSON (OTHER THAN THE INSTRUCTOR
** OR GRADERS OF THIS COURSE) AND I HAVE STRICTLY ADHERED TO THE TENURES OF THE
** OHIO STATE UNIVERSITY’S ACADEMIC INTEGRITY POLICY.

Name: mainC.c
Created by: <Name>
*/

#include <stdio.h>

int main(void) {
	int array[10];
	int i;
	printf("Enter the elements of the array:\n");
	for (i = 0; i < 10; i++) {
		scanf("%d", &array[i]);
	}
	printf("Print specific elements of the array:\n");
	for (i = 0; i < 10; i += 2) {
		printf("%d\n", array[i]);
	}
}

