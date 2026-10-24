## Open and Reproducible Research

* Our research group is committed to producing open and reproducible science by using and producing open-source and reproducible tools, and communicating our work through open-access channels.

* Group members are required to share any data and code used in the development of a paper. This does not have to happen immediately, but public release should generally occur by the time we are ready to submit a manuscript for peer-review. We often use Github and Zenodo for this. Every lab member should have and manage their own account. See [here](resources/git-and-github.md) for more detail. 

* Your entire analysis, from model calibration to figure generation, should be made public and organized in a straightforward fashion. All code and data needed to reproduce your work should be included. You should also include partial products of the analysis, such as calibration and simulation results, so that subsequent parts of the analysis can be reproduced without needing to re-run everything from scratch.
* The following article is a great place to start to learn about best practices (see [resources](resources) folder): 
  * Wilson G, Bryan J, Cranston K, Kitzes J, Nederbragt L, Teal TK (2017) Good enough practices in scientific computing. PLoS Comput Biol 13(6): e1005510. https://doi.org/10.1371/journal.pcbi.1005510
* To increase access of results to the scientific community, we will: 
  * post preprints on an open-access preprint server at the time of submission
  * publish in open-access journals (or with open-access licenses) where possible and appropriate, and make post-prints readily available when not.
  * clearly document and organize code in online repositories;
  * make code repositories publicly available at time of submission.

## Generative AI

* Generative AI tools (e.g., Claude, Claude Code) can be useful for writing support and code development, but you remain fully responsible for everything you submit. Review, test, and verify all AI-assisted output.

* We should lean conservative in our approach to disclosure, i.e., when in doubt, disclose your AI usage. Transparent disclosure helps maintain trust in our published work.

* Disclose the tool name, model, and how it was used. For example, here is some suggested language:
  * Writing support: "During manuscript preparation, the authors used Claude (Anthropic) to copyedit the text, improving sentence structure for readability and conciseness. The authors reviewed all edits and take full responsibility for the content, which reflects their own work."
  * Code development: "Claude Code (Anthropic; model [e.g., Claude Opus X.X]) was used to assist with writing and debugging the code for data processing, model implementation, and figure generation. The authors designed the analyses, reviewed and tested all code, and verified the outputs. The authors take full responsibility for the code and the content of this article."

* The placement of these disclosures varies by journal, so check the journal's AI policy before submitting:
  * HESS: Methods or Acknowledgements
  * AGU: Methods (can also be restated in the Open Research section)
  * Elsevier: a separate "Declaration of generative AI and AI-assisted technologies in the manuscript preparation process" section, with code-related use also described in Methods. They (currently) have a specific suggested statement to use when disclosing AI usage.
  * ASCE: check the current policy at submission
  * [HESS](https://www.hydrology-and-earth-system-sciences.net/policies/ai_policy.html) | [AGU](https://www.agu.org/publications/authors/policies) | [Elsevier](https://www.elsevier.com/about/policies-and-standards/generative-ai-policies-for-journals) | [ASCE](https://ascelibrary.org/author-center/ai-policy)

* If the submission system asks about AI use, disclose it there as well.

* Finally, when code was AI-assisted, note this in the repository README as well.
