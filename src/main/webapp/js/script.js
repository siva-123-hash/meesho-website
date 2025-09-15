// Simple JS for product interaction
document.addEventListener("DOMContentLoaded", function () {
    const buttons = document.querySelectorAll(".product-card button");

    buttons.forEach((btn) => {
        btn.addEventListener("click", function () {
            alert("Product added to cart!");
        });
    });
});

