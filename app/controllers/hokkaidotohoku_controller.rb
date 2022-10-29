class HokkaidotohokuController < ApplicationController

	def hokkaido
		@prefecture="北海道"
  end

	def aomori
		@prefecture="青森"
  end

	def akita
		@prefecture="秋田"
  end

	def iwate
		@prefecture="岩手"
  end

	def hukushima
		@prefecture="福島"
  end

	def miyagi
		@prefecture="宮城"
  end

	def yamagata
		@prefecture="山形"
  end
end
