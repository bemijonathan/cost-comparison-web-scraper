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
		@Campaigns = EditedCampaign.all.order(created_at: :desc).limit(2)

		@response = []

		@Campaigns.each { |e|
			@response.push({
				details: {
					id: e[:id],
					site: e[:name], 
					preview: e[:template_design],
					stats: {
						clicks: 1055,
						views: 6309,
						email: 738
					}
				}
			})
		}
		render json: @response
	end

	def deleteCampaign
		b = EditedCampaign.find_by(id: params[:id])
		if b.present?
			b.destroy
			render json: {message: "deleted succesfully"}
		else
			render json: {message: "not  deleted"}

		end
	end

	def postCampaigns
		@siteTemplate = EditedCampaign.new(name: params[:siteName], template_parent: params[:template])
		if params[:template] === 'templateOne'
			content = Template.find_by(name: "TemplateOne").content
			@siteTemplate.template_design = content
		elsif params[:template] === 'templateTwo'
			content = Template.find_by(name: "TemplateTwo").content
			@siteTemplate.template_design = content
		end

		if @siteTemplate.template_design?
			@siteTemplate.save
			render json: {message: "created succesfully" }
		else
			render json: {message: "creation failed" }
		end

	end

	def save
		b = EditedCampaign.find(params[:id])
		if b.present?
			b.update(template_design: params[:data])
			render json: {message: "saved succesfully"}
		end
		
	end

end

