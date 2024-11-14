moveNumber = (abs(((180 - y) * .005))) * 25;

y+= .2 + moveNumber;

if(y > 390){
    instance_destroy(o_go);
    exit;
}

