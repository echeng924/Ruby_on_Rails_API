20.times do
  Character.create({
    name: FFaker::HipsterIpsum.characters,
    job: FFaker::Job.title,
    tagline: FFaker::HipsterIpsum.phrase
  })
end

60.times do
  Rap.create({
    title: FFaker::DizzleIpsum.words,
    body: FFaker::DizzleIpsum.paragraph
  })
end
