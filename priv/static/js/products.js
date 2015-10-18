var productList = $(".product-list");
var product = $(".product");

var Product = function() {
    this.name = "New Product";
    this.price = 10.00;
}

Product.prototype.priceFormatted = function() {
    return this.price;
};

function changeBackground() {
    $(this).css("background", "lightyellow");
}

// REGISTER EVENTS
product.on("click", changeBackground);