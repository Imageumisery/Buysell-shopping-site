package com.example.buysell1.controllers;

import com.example.buysell1.models.Product;
import com.example.buysell1.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.getProductById(id));
        return "product-info";
    }
    @GetMapping("/product/create")
    public String createPage(Model model) {
        return "create";
    }

    @GetMapping("/")
    public String products(Model model) {
       model.addAttribute("products", productService.listProducts());
       return "products";
    }

        @PostMapping("/product/create")
    public String createProduct (Product product) {
        productService.saveProduct(product);
        return "redirect:/";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct (@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/";
    }
}
