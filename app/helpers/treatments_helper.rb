module TreatmentsHelper
  def is_true_or_false(text)
    if text == true
      return "Yes"
    else
      return "No"
    end
  end
end
