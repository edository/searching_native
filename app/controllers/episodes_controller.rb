class EpisodesController < ApplicationController
	def index
		@episodes = Episode.all

		# untuk filtering where title like params.title
		# kalo logic searching di controller
		# @episodes = @episodes.where('title like ?', "%#{params[:title]}%") if params[:title].present? 

		# kalo logic searching di controller
		# @episodes = @episodes.where(category_id: params[:category_id]) if params[:category_id].present?

		# logic searching dari model
		@episodes = @episodes.title(params[:title]) if params[:title].present?
		@episodes = @episodes.category_id(params[:category_id]) if params[:category_id].present?
	end




end