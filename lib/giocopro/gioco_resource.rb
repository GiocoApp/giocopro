module GiocoResource
  def gioco_data
    gioco_object.get_resource(self.id)
  end

  def track_event(name)
    gioco_object.track_event(name, self.id)
  end

  def ranking
    gioco_object.ranking
  end

  def gioco_object
    Giocopro::Giocopro.new
  end
end