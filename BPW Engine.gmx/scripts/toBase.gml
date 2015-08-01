var result, str, decnumb, negative, base;
negative = "";
decnumb = argument0;
if sign(decnumb) == -1
{
    negative = "-";
    decnumb = -decnumb;
}
decnumb = floor(decnumb);
base = argument1;
if base > 12 base = 12;
str = "";
result = decnumb;
while(result != 0)
{
    var m = "";
    m = string(result % base);
    result -= result % base;
    result /= base;
    if base > 10
    {
        if (m == "10") m = "X";
        else if (m == "11") m = "E";
    }
    str = m + str;
}
return negative + str;
