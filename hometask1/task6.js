function comp(a,b) {
    a = parseInt(a);
    b = parseInt(b);
    return a==b?0:a>b?-1:1;
  }
  
  function descendingOrder(n){
    return parseInt(n.toString().split('').sort(comp).join(''));
  }