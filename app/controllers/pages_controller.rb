class PagesController < ApplicationController
	def index
		params[:page] ||= 1
		params[:per_page] ||= 5

		#@links = Link.paginate(:page => params[:page]).order('id DESC')
		@links = Link.order('created_at DESC').page(params[:page].to_i).per_page(params[:per_page].to_i)
	end
end

