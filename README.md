# ICASSP2017
This repository contains BLN<sup id="a1">[1](#f1)</sup> and MLN<sup id="a2">[2](#f2)</sup> configuration files to complement our paper "A Critical Look at the Applicability of Statistical Relational Learning for Automatic Music Labelling", submitted to ICASSP 2017. We recreated the four systems described by Papadopoulos and Tzanetakis in their ISMIR 2012<sup id="a3">[3](#ismir)</sup> and ICASSP 2013<sup id="a4">[4](#f4)</sup> papers in the following folders:

* ismir1-chord
* ismir2-chordpriorkey
* ismir3-jointchordkey
* icassp-chordpriorstructure

Each folder contains the following files:

* `*.blnd` BLN declaration file
* `*.pmml` BLN network file
* `*.blogdb` BLN evidence file
* `*.instance.xml` grounded Bayesian network, created by [ProbCog]'s BLN engine
* `*.instance.bndb` evidence for grounded Bayesian network, created by [ProbCog]'s BLN engine
* `*.mln` MLN configuration file generated by the `BLN2MLN` program in [ProbCog]
* `*.db` MLN evidence file

[ProbCog]: https://github.com/opcode81/ProbCog/wiki

<a name="f1" href=#a1>[1]</a> Dominik Jain, Stefan Waldherr, and Michael Beetz, "Bayesian Logic Networks", *Tech. Rep., IAS Group, Fakultät für Informatik, Technische Universität München*, 2009.  
<a name="f2" href=#a1>[2]</a> Matthew Richardson and Pedro Domingos, "Markov Logic Networks", *Machine Learning*, vol. 62, no. 1-2, pp. 107-136, Feb. 2006.  
<a name="f3" href=#a1>[3]</a> Hélène Papadopoulos and George Tzanetakis, “Modeling Chord and Key Structure with Markov Logic,” in *Proceedings of the 13th International Conference on Music Information Retrieval (ISMIR)*, 2012, pp. 121–126.  
<a name="f4" href=#a1>[4]</a> Hélène Papadopoulos and George Tzanetakis, “Exploiting Structural Relationships in Audio Music Signals using Markov Logic Networks,” in *Proceedings of the IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP)*, May 2013, pp. 1–5.  
