document.getElementById("grossTextField").addEventListener("blur",function(){
   calculateNetValue();
})
document.getElementById("discountTextField").addEventListener("blur",function(){
    calculateNetValue();
 })
function calculateNetValue(){
    var gross = parseFloat(document.getElementById("grossTextField").value)||0;
    var discount = parseFloat(document.getElementById("discountTextField").value)||0;
    var net = gross-discount;
    document.getElementById("netTextField").value = net.toString();

}

var discountInput = document.getElementById('discountTextField')
discountInput.addEventListener("change",function(e){
    if (e.target.value == '') {
        e.target.value = 0
      }
})
