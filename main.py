import twint

wordlist = [
    "Sneakers",
    "Jordan",
    "Nike",
    "Adidas",
    "Stockx",
    ]

for word in wordlist:
    # Configure
    c = twint.Config()
    c.Search = word
    c.Limit = int(30000/len(wordlist))
    c.Lang = "en"
    c.Store_csv = True
    c.Output = "tweets.csv"
    c.Hide_output = True

    # Run
    twint.run.Search(c)
