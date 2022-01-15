# Joker
Joker is an algorithm to design antimicrobial peptides using their language

The official stable version was compiled in 32 bit. Therefore, you will need the 32 bit libraries to run this if you use a 64 bit system.

New! There is also a 64 bit version (jokerAMD64), but it is a beta version and some crashes may occur.

# Running Joker:

1. Clone the repository
<pre>git clone https://github.com/williamfp7/Joker.git</pre>

2. Enter the folder
<pre>cd Joker</pre>

3. Set the permissions
for 32 bits:
<pre>chmod +x joker</pre>
for 64 bits:
<pre>chmod +x jokerAMD64</pre>

4. Run the example
<pre>./joker -i example/2mag.fas -p example/pattern.pat -o output_example.fas</pre>

The content of output_example.fas should be identical to the file ./example/result.fas

5. Computing the periodic score
<pre>perl periodic_score.pl ./example/results.fas > score_exemple.txt<pre>

The content of score_example.txt should be identical to the file ./example/score.txt

6. For more information, please see the help
<pre>./joker --help</pre>