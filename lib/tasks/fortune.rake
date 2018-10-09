desc "Print a random fortune"

task :fortune do

  fortunes = [
    "Do not mistake temptation for opportunity",
    "A friend asks only for your time not your money",
    "Do not confuse recklessness with confidence",
    "Bide your time, for success is near",
    "Every day in your life is a special occasion",
    "Roses are Red, the end is near. I am thirsty for a beer."
  ]

random_fortune = fortunes.sample.to_s

ap(random_fortune)

              end
