# 🧪 Test Cases — Sample QA Portfolio  
Author: **Rawa Abdelhadi**  
Project: **Demo Web Application Testing**  
Date: October 2025  

---

## ✅ TC-001: Login with valid credentials
**Title:** Verify login works with valid credentials  
**Preconditions:** User account exists (test.user@example.com / CorrectPass123)  
**Steps:**
1. Navigate to the login page  
2. Enter valid username and password  
3. Click “Login” button  
**Expected Result:**  
User is redirected to the dashboard and sees a welcome message.  
**Status:** _To be tested_  

---

## ❌ TC-002: Login with invalid password
**Title:** Verify error message appears for wrong password  
**Preconditions:** User account exists  
**Steps:**
1. Navigate to login page  
2. Enter valid username and wrong password  
3. Click “Login” button  
**Expected Result:**  
System displays error message “Invalid username or password.”  
**Status:** _To be tested_  

---

## 🛒 TC-003: Add item to shopping cart
**Title:** Verify user can add product to cart  
**Preconditions:** User is logged in  
**Steps:**
1. Navigate to Products page  
2. Select a product and click “Add to Cart”  
3. Open the cart icon in the header  
**Expected Result:**  
Selected item appears in the cart with correct price and quantity.  
**Status:** _To be tested_  

---

## 💳 TC-004: Checkout with valid payment
**Title:** Verify successful checkout using valid card details  
**Preconditions:** User has at least one item in cart  
**Steps:**
1. Proceed to checkout  
2. Enter valid shipping info and payment details  
3. Click “Pay Now”  
**Expected Result:**  
Order is placed successfully, and confirmation page appears with order ID.  
**Status:** _To be tested_  

---

## 🔍 TC-005: Search for a product
**Title:** Verify search returns relevant products  
**Preconditions:** Products are available in the database  
**Steps:**
1. Enter product name “Laptop” in search bar  
2. Click “Search”  
**Expected Result:**  
List of laptops appears with accurate names and prices.  
**Status:** _To be tested_  

---

## 🧾 Notes
- All test cases are created for **demonstration purposes** only.  
- Data used here is dummy and safe to publish.  
- Each test case can be linked to Gherkin scenarios for automation reference (e.g., `Login.feature`, `checkout.feature`).  
