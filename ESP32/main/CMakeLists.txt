idf_component_register(
    SRCS "main.c"
    INCLUDE_DIRS "."
    REQUIRES esp_driver_gpio esp_wifi esp_http_server esp_timer nvs_flash wpa_supplicant
)
