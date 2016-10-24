50.times do
  Character.create({
    name: FFaker::NameBR.name,
    job: FFaker::Job.title,
    tagline: FFaker::HipsterIpsum.phrase
  })
end

100.times do
  Rap.create({
    title: FFaker::DizzleIpsum.words,
    body: FFaker::DizzleIpsum.paragraph
  })
end
