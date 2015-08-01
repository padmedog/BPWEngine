if inMenu()
switch(room)
{
    case rm_startup:
        return rm_startup;
        break;
    case rm_menu:
        return rm_menu;
        break;
    case rm_help:
        return rm_help;
        break;
    case rm_options:
        return rm_options;
        break;
    case rm_levelselect:
        return rm_levelselect;
        break;
    default:
        return -1;
        break;
}
return -1;
