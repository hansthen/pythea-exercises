/*
 *  The scanner definition for COOL.
 */

/*
 *  Stuff enclosed in %{ %} in the first section is copied verbatim to the
 *  output, so headers and global definitions are placed here to be visible
 * to the code in the file.  Don't remove anything that was here initially
 */
%{
#include <cool-parse.h>
#include <stringtab.h>
#include <utilities.h>

/* The compiler assumes these identifiers. */
#define yylval cool_yylval
#define yylex  cool_yylex

/* Max size of string constants */
#define MAX_STR_CONST 1025
#define YY_NO_UNPUT   /* keep g++ happy */

extern FILE *fin; /* we read from this file */

/* define YY_INPUT so we read from the FILE fin:
 * This change makes it possible to use this scanner in
 * the Cool compiler.
 */
#undef YY_INPUT
#define YY_INPUT(buf,result,max_size) \
	if ( (result = fread( (char*)buf, sizeof(char), max_size, fin)) < 0) \
		YY_FATAL_ERROR( "read() in flex scanner failed");

char string_buf[MAX_STR_CONST]; /* to assemble string constants */
char *string_buf_ptr;

extern int curr_lineno;
extern int verbose_flag;
int nesting = 0 ;
extern YYSTYPE cool_yylval;

/*
 *  Add Your own definitions here
 */
%}

%x              IN_COMMENT
%x              IN_STRING

DARROW          =>
LE              <=
ASSIGN          <-

digit           [0-9]
letter          [a-zA-Z]
eol_comment     --(.*)
new_line        \n

%%

<IN_COMMENT>{
     "*)"      if(nesting == 0) BEGIN(INITIAL); else nesting--;
     "(*"      nesting++; 
     [^(*\n]+  // eat comment in chunks
     "*"       // eat the lone star
     "("       // eat the lone star
     \n        yylineno++; curr_lineno++;
     \0        cool_yylval.error_msg = "NULL in Comment"; return ERROR;
     <<EOF>>   cool_yylval.error_msg = "EOF in Comment"; BEGIN(INITIAL); return ERROR;
}

<IN_STRING>{
     \"      {BEGIN(INITIAL); *string_buf_ptr = 0;  
             if (string_buf_ptr - string_buf == MAX_STR_CONST) {
                cool_yylval.error_msg = "String constant too long"; return ERROR;
             }
             if(strlen(string_buf) != (unsigned) (string_buf_ptr - string_buf)) {
                cool_yylval.error_msg = "Unterminated string constant"; return ERROR;
             } else {
                cool_yylval.symbol = stringtable.add_string(strdup(string_buf)); return STR_CONST;
             }}
            
     \\n     if (string_buf_ptr - string_buf <= MAX_STR_CONST) *string_buf_ptr++ = '\n';
     \\b     if (string_buf_ptr - string_buf <= MAX_STR_CONST) *string_buf_ptr++ = '\b';
     \\t     if (string_buf_ptr - string_buf <= MAX_STR_CONST) *string_buf_ptr++ = '\t';
     \\f     if (string_buf_ptr - string_buf <= MAX_STR_CONST) *string_buf_ptr++ = '\f';
     \\\n    if (string_buf_ptr - string_buf <= MAX_STR_CONST) *string_buf_ptr++ = '\n'; yylineno++; curr_lineno++;
     \\\"    if (string_buf_ptr - string_buf <= MAX_STR_CONST) *string_buf_ptr++ = '"';
     \\\\    if (string_buf_ptr - string_buf <= MAX_STR_CONST) *string_buf_ptr++ = '\\'; 
     \\      ;
     .       if (string_buf_ptr - string_buf <= MAX_STR_CONST) *string_buf_ptr++ = yytext[0];
     \n      cool_yylval.error_msg = "Unterminated string constant"; BEGIN(INITIAL); return ERROR;
     <<EOF>> cool_yylval.error_msg = "Unterminated string constant"; BEGIN(INITIAL); return ERROR;
}
<INITIAL>{
"(*"                                BEGIN(IN_COMMENT);
\"                                  BEGIN(IN_STRING); string_buf[0] = 0; string_buf_ptr = string_buf;
"*)"                                cool_yylval.error_msg = "Unmatched *)"; return ERROR;
{eol_comment}                       ;
\\n                                 ;
\0                                  cool_yylval.error_msg = "\000"; return ERROR;
{new_line}                          ++yylineno;curr_lineno++;

{digit}+                            cool_yylval.symbol = inttable.add_string(yytext); return INT_CONST;

(?i:class)                          return CLASS;
(?i:else)                           return ELSE;
(?i:fi)                             return FI;
(?i:if)                             return IF;
(?i:in)                             return IN;
(?i:inherits)                       return INHERITS;
(?i:isvoid)                         return ISVOID;
(?i:let)                            return LET;
(?i:loop)                           return LOOP;
(?i:pool)                           return POOL;

(?i:then)                           return THEN;
(?i:while)                          return WHILE;
(?i:case)                           return CASE;
(?i:esac)                           return ESAC;
(?i:new)                            return NEW;
(?i:of)                             return OF;
(?i:not)                            return NOT;
t(?i:rue)                           cool_yylval.boolean = 1; return BOOL_CONST;
f(?i:alse)                          cool_yylval.boolean = 0; return BOOL_CONST;

[A-Z][A-Za-z0-9_]*                  cool_yylval.symbol = idtable.add_string(strdup(yytext)); return TYPEID;
[a-z][A-Za-z0-9_]*                  cool_yylval.symbol = idtable.add_string(strdup(yytext)); return OBJECTID;
[ \t\n\f\r\v]                               ;
{DARROW}                            { return DARROW; } 
{LE}                                { return LE; } 
{ASSIGN}                            { return ASSIGN; } 

[.@~*/+-<={}():]                         return yytext[0];

.                                   cool_yylval.error_msg = yytext; return ERROR;

}

 /*
  *  Nested comments
  */


 /*
  *  The multiple-character operators.
  */
 /*
  * Keywords are case-insensitive except for the values true and false,
  * which must begin with a lower-case letter.
  */


 /*
  *  String constants (C syntax)
  *  Escape sequence \c is accepted for all characters c. Except for 
  *  \n \t \b \f, the result is c.
  *
  */

%%
