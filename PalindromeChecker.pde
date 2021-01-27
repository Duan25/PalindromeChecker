public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    onlyLetters(lines[i]);
    numLetters(lines[i]);
    noSpaces(lines[i]);
    noCapitals(lines[i]);
    if(palindrome(lines[i]) == true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(word.equals(reverse(word))) {
    return true;
  }
  return false;
}

public String reverse(String str)
{
  String sNew = new String();
  ArrayList<String> arr = new ArrayList<String>();
  for(int i = 0; i < str.length(); i++) {
    arr.add(str.substring(i, i + 1));
  }
  for(int i = arr.size() - 1; i > - 1; i--) {
    sNew += arr.get(i);
  }
  return sNew;
}

public String noCapitals(String sWord) {
  return sWord.toLowerCase();
}

public String noSpaces(String sWord) {
  String sNew = "";
  for(int i = 0; i < sWord.length(); i++) {
    if(sWord.charAt(i) != ' ') {
      sNew += sWord.charAt(i);
    }
  }
  return sNew;
}

public String onlyLetters(String sString){
  String sNew = "";
  for(int i = 0; i < sString.length(); i++) {
    if(Character.isLetter(sString.charAt(i))) {
      sNew += sString.charAt(i);
    }
  }
  return sNew;
}

public int numLetters(String sString){
  int sum = 0;
  for(int i = 0; i < sString.length(); i++) {
    if(Character.isLetter(sString.charAt(i)) == true) {
      sum++;
    }
  } 
  return sum;
}



