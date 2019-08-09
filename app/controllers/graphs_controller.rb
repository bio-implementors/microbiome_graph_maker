class GraphsController < ApplicationController
	def index
		@graphs = Graph.all
	end
	
	def show
		@graph = Graph.find(params[:id])
	end
	
	def new
		@graph = Graph.new
	end
	
	def edit
		@graph = Graph.find(params[:id])
	end
	
	def create
		@graph = Graph.new(graph_params)
		
		if @graph.save
			redirect_to @graph
		else
			render 'new'
		end
	end
	
	def update
		@graph = Graph.find(params[:id])
		
		if @graph.update(graph_params)
			redirect_to @graph
		else
			render 'edit'
		end
	end
	
	def destroy
  		@graph = Graph.find(params[:id])
  		@graph.destroy
 
  		redirect_to graphs_path
	end
	
	private
		def graph_params
			params.require(:graph).permit(:file_name, :tax_level, :clade_num, :upload_graph, :upload_legend)
		end
end
