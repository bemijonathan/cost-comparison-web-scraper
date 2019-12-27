require 'nokogiri'
require 'open-uri'
# require 'https'

class HomeController < ApplicationController

    def index
        render "home"
    end
    def term
        @term = params[:term] 
        puts "############"
        #konga
        @html = nogokiri(@term)
        #jumia 
        @jumia  = nokogiri_jumia(@term)
        render "term"
    end

    def nogokiri(term)
         @doc = Nokogiri::HTML(open("https://www.konga.com/search?search=#{term}",ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE))
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
            details[:image] = product.search('img.f5e10_VzEXF').attr('src')
            details[:name] = product.search('.af885_1iPzH').inner_text
            details[:price] = product.search('.d7c0f_sJAqi').inner_text
            details[:link] = product.search('._4941f_1HCZm a')[0]['href']
            items_to_render.push(details)
         end

         return items_to_render
    end 
    
    def nokogiri_jumia(term)
        @doc = Nokogiri::HTML(open("https://www.jumia.com.ng/catalog/?q=#{term}",ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE))
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

            details[:image] = product.search('img').attr('data-src')
            details[:name] = product.search('.title .name').inner_text
            details[:price] = product.search('.price-box .price').inner_text
            details[:link] = product.search('.sku.-gallery a').attr('href')
            items_to_render.push(details)
        end
        return items_to_render
    end 
end
