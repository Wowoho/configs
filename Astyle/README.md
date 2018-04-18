# **Astyle配置说明**

## **Option's Format:**
----------------
    Long options (starting with '--') must be written one at a time.
    Short options (starting with '-') may be appended together.
    Thus, -bps4 is the same as -b -p -s4.

## **Style:**
-------------------------
    --style=allman  OR  --style=bsd  OR  -A1
    allman风格
    Allman style formatting/indenting.
    Broken brackets.

    --style=java  OR  -A2
    java风格
    Java style formatting/indenting.
    Attached brackets.

    --style=k&r  OR  --style=k/r  OR  -A3
    k&r风格
    Kernighan & Ritchie style formatting/indenting.
    Linux brackets.

    --style=stroustrup  OR  -A4
    stroustrup风格
    Stroustrup style formatting/indenting.
    Stroustrup brackets.

    --style=whitesmith  OR  -A5
    whitesmith风格
    Whitesmith style formatting/indenting.
    Broken, indented brackets.
    Indented class blocks and switch blocks.

    --style=banner  OR  -A6
    banner风格
    Banner style formatting/indenting.
    Attached, indented brackets.
    Indented class blocks and switch blocks.

    --style=gnu  OR  -A7
    gnu风格
    GNU style formatting/indenting.
    Broken brackets, indented blocks, indent is 2 spaces.

    --style=linux  OR  -A8
    linux风格
    GNU style formatting/indenting.
    Linux brackets, indent is 8 spaces.

Tab and Bracket Options:
------------------------
tab选项:
    默认tab是4个空格.

    --indent=spaces=#  OR  -s#
    默认行缩进为4个空格,可以将#替换为缩进量

    --indent=tab  OR  --indent=tab=#  OR  -t  OR  -t#
    行缩进用tab,默认tab长度与4个空格相等

    --indent=force-tab=#  OR  -T#
    优先采用空格缩进
---
## **大括号选项:**
    If no brackets option is set,
    the brackets will not be changed.

    --brackets=break  OR  -b
    大括号与前一块隔开为两行
    Break brackets from pre-block code (i.e. ANSI C/C++ style).

    --brackets=attach  OR  -a
    大括号前一个与上一行在同一行
    Attach brackets to pre-block code (i.e. Java/K&R style).

    --brackets=linux  OR  -l
    定义块 和 函数块中的大括号都被处理
    Break definition-block brackets and attach command-block
    brackets.

    --brackets=stroustrup  OR  -u
    只处理函数中的大括号
    Attach all brackets except function definition brackets.

Indentation options:
--------------------
    --indent-classes  OR  -C
    缩进类定义中的public private protected标签.
    Indent 'class' blocks, so that the inner 'public:',
    'protected:' and 'private: headers are indented in
    relation to the class block.

    --indent-switches  OR  -S
    缩进switch中的case块,case和switch不在同一列
    Indent 'switch' blocks, so that the inner 'case XXX:'
    headers are indented in relation to the switch block.

    --indent-cases  OR  -K
    缩进case下面的语句
    Indent case blocks from the 'case XXX:' headers.
    Case statements not enclosed in blocks are NOT indented.

    --indent-blocks  OR  -G
    给块添加缩进,包括大括号
    Add extra indentation entire blocks (including brackets).

    --indent-brackets  OR  -B
    给大括号添加缩进
    Add extra indentation to '{' and '}' block brackets.

    --indent-namespaces  OR  -N
    缩进命名空间定义行
    Indent the contents of namespace blocks.

    --indent-labels  OR  -L
    标签缩进
    Indent labels so that they appear one indent less than
    the current indentation level, rather than being
    flushed completely to the left (which is the default).

    --indent-preprocessor  OR  -w
    多行宏定义缩进
    Indent multi-line #define statements.

    --max-instatement-indent=#  OR  -M#
    跨行缩进,比如函数定义中的参数处在多行,那么参数缩进到同一列
    Indent a maximal # spaces in a continuous statement,
    relative to the previous line.

    --min-conditional-indent=#  OR  -m#
    Indent a minimal # spaces in a continuous conditional
    belonging to a conditional header.
---
## **Formatting options:**
    --break-blocks  OR  -f
    空行分隔没有关系的块,类,标签(不包括函数块)
    Insert empty lines around unrelated blocks, labels, classes, ...

    --break-blocks=all  OR  -F
    空行分隔无关系的块,包括else catch等
    Like --break-blocks, except also insert empty lines
    around closing headers (e.g. 'else', 'catch', ...).

    --break-closing-brackets  OR  -y
    else catch左边的大括号与else catch分隔
    Break brackets before closing headers (e.g. 'else', 'catch', ...).
    Use with --brackets=attach, --brackets=linux,
    or --brackets=stroustrup.

    --break-elseifs  OR  -e
    else if()分隔为两行
    Break 'else if()' statements into two different lines.

    --delete-empty-lines  OR  -x
    删除多余空行
    Delete empty lines within a function or method.
    It will NOT delete lines added by the break-blocks options.

    --pad-oper  OR  -p
    操作符两端插入一个空格
    Insert space paddings around operators.

    --pad-paren  OR  -P
    括号内外都插入空格
    Insert space padding around parenthesis on both the outside
    and the inside.

    --pad-paren-out  OR  -d
    括号外部插入空格
    Insert space padding around parenthesis on the outside only.

    --pad-paren-in  OR  -D
    括号外部插入空格
    Insert space padding around parenthesis on the inside only.

    --unpad-paren  OR  -U
    删除括号两端多余空格
    Remove unnecessary space padding around parenthesis.  This
    can be used in combination with the 'pad' options above.

    --keep-one-line-statements  OR  -o
    一行中的多个申明不分隔  int x;int y;int z不被分为3行
    Don't break lines containing multiple statements into
    multiple single-statement lines.

    --keep-one-line-blocks  OR  -O
    大括号中的单行语句不被拆分
    Don't break blocks residing completely on one line.

    --convert-tabs  OR  -c
    tab转换为空格
    Convert tabs to the appropriate number of spaces.

    --fill-empty-lines  OR  -E
    块间空行的换行符前插入一个空格
    Fill empty lines with the white space of their
    previous lines.

    --mode=c
    处理c文件
    Indent a C or C++ source file (this is the default).

    --mode=java
    处理jave文件
    Indent a Java source file.

    --mode=cs
    处理c#文件
    Indent a C# source file.
---
### **Other options:**

    --suffix=####
    指定备份文件的后缀
    Append the suffix #### instead of '.orig' to original filename.

    --suffix=none  OR  -n
    不备份文件
    Do not retain a backup of the original file.

    --options=####
    指定从####文件读取选项信息
    Specify an options file #### to read and use.

    --options=none
    禁止从文件读取选项信息
    Disable the default options file.
    Only the command-line parameters will be used.

    --recursive  OR  -r  OR  -R
    递归处理子目录
    Process subdirectories recursively.

    --exclude=####
    排除不处理的文件夹
    Specify a file or directory #### to be excluded from processing.

    --errors-to-stdout  OR  -X
    Print errors and help information to standard-output rather than
    to standard-error.

    --preserve-date  OR  -Z
    不修改时间
    The date and time modified will not be changed in the formatted file.

    --verbose  OR  -v
    输出详细处理信息
    Verbose mode. Extra informational messages will be displayed.

    --formatted  OR  -Q
    输出信息中只包括被修改的文件信息
    Formatted display mode. Display only the files that have been formatted.

    --quiet  OR  -q
    忽略所有错误
    Quiet mode. Suppress all output except error messages.

    --version  OR  -V
    输出astyle版本
    Print version number.

    --help  OR  -h  OR  -?
    帮助信息
    Print this help message.

## **Default options file:**
---------------------
    Artistic Style looks for a default options file in the
    following order:
    1. The contents of the ARTISTIC_STYLE_OPTIONS environment
       variable if it exists.
       从ARTISTIC_STYLE_OPTIONS环境变量读取选项
    2. The file called .astylerc in the directory pointed to by the
       HOME environment variable ( i.e. $HOME/.astylerc).
       从/home文件夹中的.astylerc文件读取选项
    3. The file called astylerc in the directory pointed to by the
       USERPROFILE environment variable ( i.e. %USERPROFILE%\astylerc ).
       从USERPROFILE下的astylerc文件读取选项信息
    If a default options file is found, the options in this file
    will be parsed BEFORE the command-line options.
    Long options within the default option file may be written without
    the preliminary '--'.

 

--options的用法:

我的在source insight中的设置为   AStyle.exe --options=D:\TOOLS\AStyle\astyle.cfg  %f

astyle.cfg内容为:

-s4 -SKFxpUcnlaC  
        #表示是注释  
        #-s4 行缩进用4个空格  
        #-S  switch 与case不同列,case缩进  
        #-K  缩进case下面的语句  
        #-F  空行分隔无关块  
        #-x  删除多余空行  
        #-p  操作符两端出入空格  
        #-U  删除括号两端多余空格  
        #-c  tab转空格  
        #-n  不做备份  
        #-l  处理定义和函数中的大括号  
        #-a  大括号保留在上一行  

