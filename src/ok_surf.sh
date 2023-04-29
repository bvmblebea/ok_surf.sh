#!/bin/bash

api="https://ok.surf/api/v1"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_news_feed() {
    curl --request GET \
        --url "$api/news-feed" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_news_section_names() {
    curl --request GET \
        --url "$api/news-section-names" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_cors_news_feed() {
    curl --request GET \
        --url "$api/cors/news-feed" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_cors_news_section_names() {
    curl --request GET \
        --url "$api/cors/news-section-names" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
