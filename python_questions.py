# q1
def fill_none(data):
    last_valid = None
    result = []
    for item in data:
        if item is not None:
            last_valid = item
        result.append(last_valid)
    return result

data = [1, None, 1, 2, None, None, 5]
filled_data = fill_none(data)
print(filled_data) 


#q2
def find_mismatched_words(str1, str2):
    """Finds mismatched words (case-sensitive) between two strings."""
    words1 = str1.split()
    words2 = str2.split()
    mismatched = []
    for word1, word2 in zip(words1, words2):
        if word1.lower() == word2.lower() and word1 != word2:
            mismatched.append(word1)
            mismatched.append(word2)
    return mismatched

text1 = "Datumlabs is an awesome place"
text2 = "Datumlabs.io Is an AWESOME place"
mismatched_words = find_mismatched_words(text1, text2)
print(mismatched_words)  


#q3
def count_char(text, char):
    return text.count(char)

text = "mississippi"
char = 's'
count = count_char(text, char)
print(count)

#q4
def find_nth_largest_key(data, n):
    sorted_values = sorted(data.values(), reverse=True)
    nth_largest_value = sorted_values[n - 1] 
    for key, value in data.items():
        if value == nth_largest_value:
            return key

data = {'a': 1, 'b': 2, 'c': 100, 'd': 30}
n = 2  
key = find_nth_largest_key(data, n)
print(key)



