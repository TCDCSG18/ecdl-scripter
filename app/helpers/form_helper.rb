module FormHelper
  def setup_question(question)
    (4-question.answers.length).times { question.answers.build }
    question
  end
end
