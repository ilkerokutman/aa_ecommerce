## Architecture

UI < - > Controller < -[model]- > Provider < -[json]- > Data Source

Controller: GetX
persistent storage: get_storage
network: dio, cached_network_image,
localization: intl
ui: flutter_svg, material_icons, flutter_launcher_icons, native_splash_screen


## Flow

`https://drive.google.com/file/d/1CZA9E49hucRL22tHvEbnwXg-z0rqtKhS/view?usp=sharing`


### Structure

- lib
    - main.dart // entry point
    - app
        - app.dart // MaterialApp widget
        - core
            - themes
                - light.dart
                - dark.dart
            - localizations
                - localization_service.dart
                - lang
                    - en.dart
                    - tr.dart
            - constants
                - strings.dart // uygulamada gececek metinler
                - assets.dart //
                - colors.dart // renkler
                - dimens.dart // boyutlar
                - keys.dart // anahtarlar
                - enums.dart // enumlar
            - extensions
                - string_extensions.dart
                - number_extensions.dart
                - http_extensions.dart
            - utils
                - common_utils.dart
                - dialog_utils.dart 
                - currency_utils.dart
                - date_utils.dart
                - image_utils.dart
        - routes
            - app_routes.dart // uygulamadaki butun sayfalarin rota bilgileri orn: '/contact' -> ContactPage
        - features
            - shared
                - widget
                    - success_screen.dart
                    - error_screen.dart
                    - loading_screen.dart
                    - no_item_screen.dart
                - components
                    - appbar.dart
                    - navigation_bar.dart
                    - scaffold.dart
                    - app_button.dart
                - data
                    - controllers
                        - app_controller.dart // theme, language, ScreenStatus
                    - providers
                        - base_provider.dart // dio settings
            - account
                - screens
                    - sign_in_screen.dart
                    - sign_up_screen.dart
                    - reset_password_screen.dart
                    - profile_screen.dart
                    - my_addresses_screen.dart
                    - my_payment_methods_screen.dart
                    - my_orders_screen.dart
                    - my_favorites_screen.dart
                    - my_reviews_screen.dart
                    - widget
                - data
                    - models
                        - singin_request.dart
                        - signin_response.dart
                        - register_request.dart
                        - reset_password_request.dart
                        - reset_password_response.dart
                        - profile.dart
                        - address.dart
                        - payment_method.dart
                    - controllers
                        - account_controller.dart
                    - providers
                        - account_provider.dart
            - product
                - screens
                    - home_screen.dart
                    - category_screen.dart
                    - product_list_screen.dart
                    - product_details_screen.dart
                    - product_gallery_screen.dart
                    - widget
                        - price_display_widget.dart
                - data
                    - models
                        - product.dart
                        - category.dart
                        - product_review.dart
                        - order.dart
                        - order_item.dart
                    - controllers
                        - product_controller.dart
                    - providers
                        - product_provider.dart  
            - content
                - screens
                    - splash_screen.dart
                    - onboarding_screen.dart
                    - about_screen.dart
                    - help_screen.dart
                    - contact_screen.dart
                    - privacy_policy_screen.dart
                    - terms_and_conditions_screen.dart
                    - faq_screen.dart
                    - widget
                - data
                    - models
                        - content.dart
                    - controllers
                        - content_controller.dart
                    - providers
                        - content_provider.dart
                    
    