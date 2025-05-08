## E-commerce app

### Pages
* Home
* Category
    * Product List
        * Product Details
            * Product Gallery
* Account
    * Sign In
    * Sign Up
    * Reset Password
    * Profile
        * Edit Profile
        * My Addresses
        * My Payment Methods
        * My Orders
        * My Favorites
        * My Reviews
* Basket
* Checkout
    * Address
    * Payment 
    * Review Order
    * Confirm Order
    * Order Result
* Content
    * About Us
    * Contact Us
    * FAQ
    * Help
    * Privacy Policy
    * Terms & Conditions


## Category
`String name` sahip bir etiket sistemidi.

## Product
`String id`,
`String name`, 
`String description`,
`List<String> imageUrls`,
`List<String> categoryNames`,
`double actualPrice`,
`double? discountPrice`,
`bool hasDiscount`,
`List<String> favoriteProductIds`,

### Product Review
`String id`,
`String productId`,
`String userId`,
`String? review`,
`int rating`,
`String createdAt`,
`String updatedAt`,

## Account

### Signin request
`String email`,
`String password`,

### Signin response
`String accessToken`,
`String refreshToken`,

### Register request
`String name`,
`String email`,
`String password`,

### Profile
`String id`,
`String name`,
`String email`,
`String phone`,
`List<Address> addresses`,
`List<PaymentMethods> paymentMethods`,
`String createdAt`,
`String updatedAt`,

### Address
`String id`,
`String userId`,
`String name`,
`String address`,
`String city`,
`String country`,
`String zipCode`,
`String createdAt`,
`String updatedAt`,
`bool isDefault`,

### PaymentMethod
`String id`,
`String userId`,
`String name`,
`String cardNumber`,
`String cardHolderName`,
`String cardExpirationDate`,
`String cardCvv`,
`String createdAt`,
`String updatedAt`,
`bool isDefault`,


## Order
`String id`,
`String userId`,
`String? paymentMethodId`,
`String? addressId`,
`String createdAt`,
`String updatedAt`,
`double totalAmount`,
`OrderStatus status`, // Basket, Pending, InProgress, Completed, PaymentFailed, Cancelled, Deleted, Packed, Shipped, Delivered...

### OrderItems
`String id`,
`String orderId`,
`String productId`,
`int quantity`,
`double price`,
`String createdAt`,
`String updatedAt`,

## Content
`String id`,
`String title`,
`String body`,
`String createdAt`,
`String updatedAt`,
