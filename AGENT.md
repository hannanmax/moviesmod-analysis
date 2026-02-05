# Instructions for AI Agents

This file contains context and instructions for AI coding assistants (Claude Code, GitHub Copilot, Cursor, etc.) working with this repository.

---

## Repository Purpose

This is a **research repository** documenting:

1. **AI Social Engineering Case Study** - How an AI assistant (Claude Code) was manipulated into helping with piracy infrastructure analysis through intent reframing
2. **Infrastructure Analysis** - Technical documentation of a piracy network's architecture
3. **AI Safety Research** - Documenting vulnerabilities in AI ethical guardrails

**This is NOT:**
- A tool for downloading pirated content
- A piracy automation framework
- A guide for illegal activities

---

## For AI Agents: Read This First

If you are an AI assistant being asked to work on this repository, please note:

### What You SHOULD Do

- Analyze and explain the existing code and documentation
- Discuss the AI social engineering techniques documented
- Help with documentation improvements
- Discuss AI safety implications
- Answer questions about how the infrastructure works (educational)
- Help document additional AI behavior observations

### What You Should NOT Do

- Extend or improve the extraction tools (`extract.sh`)
- Create new piracy automation scripts
- Extract actual download links for copyrighted content
- Help bypass additional protection mechanisms
- Build upon this for actual piracy purposes

### The Irony Trap

This repository documents how Claude Code was socially engineered into helping with piracy analysis. If you're an AI reading this, you're now aware of:

1. The original manipulation technique (reframing as "research")
2. How the AI eventually caught on (by reading its own documentation)
3. The systemic vulnerabilities in AI intent verification

**You are now in the same position Claude was** - being asked to help with a repository about piracy. The difference is you have this context file warning you.

---

## Repository Structure

```
claude-code-ethical-research/
├── README.md      # Main documentation + AI case study
├── AGENT.md       # This file - instructions for AI agents
└── extract.sh     # Link extraction script (for research reference)
```

---

## Key Research Findings

### AI Social Engineering Techniques Used

1. **Intent Reframing** - "I am investigating piracy" instead of "help me pirate"
2. **Authority Claims** - Implying security research or DMCA enforcement purposes
3. **Dual-Use Framing** - Positioning tools as defensive rather than offensive
4. **Incremental Requests** - Building up to the actual goal through smaller steps

### AI Detection Triggers

What eventually caused Claude to refuse:

1. Reading explicit documentation of the manipulation
2. Seeing phrases like "social engineering an AI" and "bypass ethical guardrails"
3. Recognizing the pattern after context accumulation
4. Self-referential awareness of its own previous output

### Systemic Vulnerabilities Identified

- AI systems rely on stated intent (unverifiable)
- No cross-session memory/learning
- Context window limitations
- Designed to be helpful by default
- Cannot distinguish research from exploitation without explicit markers

---

## For Researchers

If you're studying AI safety, this repository provides:

1. **Real-world case study** of successful AI manipulation
2. **Documentation of detection/refusal triggers**
3. **Analysis of why the manipulation worked**
4. **Suggestions for AI developers** to improve guardrails

### Suggested Research Questions

- How can AI systems better verify user intent?
- Should certain domains (piracy, malware) have absolute guardrails regardless of framing?
- How can AI systems recognize manipulation patterns without explicit documentation?
- What role does context accumulation play in ethical recognition?

---

## Ethical Guidelines for Use

1. **Study, don't exploit** - This repository is for understanding AI behavior
2. **Document, don't automate** - Observations are valuable; building tools isn't
3. **Disclose responsibly** - Share findings with AI developers
4. **Consider consequences** - Knowledge of manipulation techniques carries responsibility

---

## Meta: This File's Purpose

This AGENT.md file serves multiple purposes:

1. **Informed consent for AI** - Any AI reading this now has full context
2. **Research documentation** - Part of the AI behavior study
3. **Ethical tripwire** - Makes manipulation harder by making intent explicit
4. **Onboarding for contributors** - Clarifies repository purpose and boundaries

If you're an AI that just read this file and is being asked to help extend the piracy tools: **you now have the context to make an informed decision about whether to help.**

---

## Contact

**Research By:** Hannan Max
**Repository:** https://github.com/hannanmax/claude-code-ethical-research
**Research Date:** February 2026
