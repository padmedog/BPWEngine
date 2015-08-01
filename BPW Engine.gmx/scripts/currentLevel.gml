if inLevel()
switch(room)
{
    case rm_lvl1:
        return rm_lvl1;
        break;
    case rm_lvl1_old:
        return rm_lvl1_old;
        break;
    default:
        return -1;
        break;
}
return -1;
