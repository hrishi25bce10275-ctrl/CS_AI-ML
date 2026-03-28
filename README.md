# CS_AI-ML
# Fake News Detection System - CS_AI-ML

**Author**: Hrishi Upadhyay  
**Registration No**: 25BCE10275  
**Year**: First Year  
**Course Code**: [To be specified]  

A rule-based AI system implemented in Prolog for detecting fake news using logical inference, suspicious keywords, and source credibility checks. Classifies news as **Real**, **Fake**, or **Uncertain**.

## Features

- Symbolic AI approach with Prolog facts and rules
- Analyzes news text for suspicious keywords
- Evaluates source credibility
- Transparent decision-making via logical rules

## Prerequisites

- SWI-Prolog (version 8.x or higher)
- Text editor (VS Code, Notepad++)

## Setup

1. Install SWI-Prolog: [swi-prolog.org](https://www.swi-prolog.org/download/stable)[file:1]
2. Clone repository:
3. Verify `fake_news_detector.pl` is present[file:1]

## Usage

1. Launch Prolog:
2. Query examples:
```prolog
?- classify_news("shocking viral news click here", "randomblog").
% Output: fake

?- classify_news("government releases new policy", "bbc").
% Output: real
```
[file:1]

## Test Cases

| News Text                  | Source    | Expected Output |
|----------------------------|-----------|-----------------|
| shocking viral news click here | randomblog | Fake[file:1] |
| government releases new policy | bbc     | Real[file:1] |
| new technology launched    | unknown   | Uncertain[file:1] |

## System Rules

- **Fake**: Suspicious keywords + untrusted source[file:1]
- **Real**: Trusted source + no suspicious keywords[file:1]
- **Uncertain**: All other cases[file:1]

## Student Information

**Submitted by**: Hrishi Upadhyay  
**Reg No**: 25BCE10275  
**Academic Year**: First Year[file:1]

## Limitations

- Basic pattern matching (no NLP)[file:1]
- Static knowledge base[file:1]

## Future Work

- ML integration[file:1]
- Web GUI[file:1]
- Real-time analysis[file:1]

## References

SWI-Prolog docs & AI materials[file:1]
