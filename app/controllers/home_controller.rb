require 'nokogiri'
require 'open-uri'
# require 'https'

class HomeController < ApplicationController

    def index
        render json: "home"
    end

    def nogokiri_konga(term, page)
         @doc = Nokogiri::HTML(open("https://www.konga.com/search?search=#{term}&page=#{page}", ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE))
        #  puts @doc
         item = @doc.search('li.bbe45_3oExY')

         items_to_render = []

         item.each do |product|
            details = {
                :name =>'',
                :price => '',
                :link => '',
                :image => ""
            }
            details[:image] = product.search('img.f5e10_VzEXF')[0]['src']
            details[:name] = product.search('.af885_1iPzH').inner_text
            details[:price] = product.search('.d7c0f_sJAqi').inner_text
            details[:link] = product.search('._4941f_1HCZm a')[0]['href']
            items_to_render.push(details)
         end

         pages = @doc.search('._6d32f_2_vdu li:last-child').inner_text

         return {items: items_to_render, page: pages}
    end 
    
    def nokogiri_jumia(term, page)
        @doc = Nokogiri::HTML(open("https://www.jumia.com.ng/catalog/?q=#{term}&page=#{page}",ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE))
        item = @doc.search('div.sku.-gallery');

        puts item

        items_to_render = []

        item.each do |product|
            details = {
                :name =>'',
                :price => '',
                :link => '',
                :image => ""
            }

            details[:image] = product.css('.image-wrapper.default-state img').map{ |i| i['src'] } [1]
            details[:name] = product.search('.title .name').inner_text
            details[:price] = product.search('.price-box .price').inner_text
            details[:link] = product.css('.link').map{ |i| i['href'] }[0]
            # .map{ |i| i['href'] }
            items_to_render.push(details)
        end

        pages = @doc.search('section.pagination li:nth-last-child(2)').inner_text

        return {items: items_to_render, page: pages}
    end 


    def jumia 
        @term = params[:term] 
        @page = params[:page]
        @jumia  = nokogiri_jumia(@term, @page)
        render json: @jumia
    end

    def konga
        @term = params[:term] 
        @page = params[:page]
        @konga = nogokiri_konga(@term, @page)
        render json: @konga
    end
end
