require "json"
class OptifrontController < ApplicationController
	def home 
		@stats = {
			clicks: 1000,
			views: 2500,
			closes: 800
		}

		print(@stat.to_json)

		render json:@stats
	end

	def getwebsite
		@websites = Website.all.order(created_at: :desc).limit(3)
		@website = [] 
		@websites.each { |e|  @website.push({name: e[:name], link: e[:link], id: e[:id] }) }
		render json: @website
	end

	def postwebsite
		@web = Website.new(name: params[:name], link: params[:link])
		if @web.save!
			render json: {message: "saved"}
		else
			render json: {message: @web.errors.messages}
		end
	end

	def getCampaign
	end
  	def deleteCampaign
  	end
  	def postCampaigns
  	end

end

