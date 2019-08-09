class Graph < ApplicationRecord
	validates :file_name, presence: true, length: {minimum:5}
	has_one_attached :upload_graph
	has_one_attached :upload_legend
end
