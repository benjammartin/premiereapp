class HomeController < ApplicationController

def cgu
 @cgus = Cgu.all
end

def cgv
 @cgvs = Cgv.all
end

def faq
 @questions = Question.all
end

def programme
@chapitres = Chapitre.order('created_at ASC')
end


end
