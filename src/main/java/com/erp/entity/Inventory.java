package com.erp.entity;

import java.util.ArrayList;
import java.util.List;

public class Inventory {

    private int totalInventory;
    private List<Product> products;
    private List<RawMaterial> rawMaterials;

    public Inventory() {
        this.products = new ArrayList<>();
        this.rawMaterials = new ArrayList<>();
    }

    public Inventory(int totalInventory, List<Product> products, List<RawMaterial> rawMaterials) {
        this.totalInventory = totalInventory;
        this.products = products;
        this.rawMaterials = rawMaterials;
    }

    public void setTotalInventory(int totalInventory) {
        this.totalInventory = totalInventory;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public void setRawMaterials(List<RawMaterial> rawMaterials) {
        this.rawMaterials = rawMaterials;
    }

    public int getTotalInventory() {
        return totalInventory;
    }

    public List<Product> getProducts() {
        return products;
    }

    public List<RawMaterial> getRawMaterials() {
        return rawMaterials;
    }

    public void addProduct(Product product) {
        products.add(product);
    }

    public void addRawMaterial(RawMaterial rawMaterial) {
        rawMaterials.add(rawMaterial);
    }
    public void totalInventory()
    {
        //call dao function and get the data of all products and raw material and then calculate total inventory
    }
}
