# Global Architecture Context

## Current Multi-Repo Project Status
- Converting POCs to production-ready systems
- Focus on cloud deployment, containerization, CI/CD
- Multiple repositories requiring consistent architecture

## Always Reference Architecture Files
CRITICAL: When working on any task, first read these architecture files:
- /home/csmith/Pinepeak/architecture/cloud-strategy.md
- /home/csmith/Pinepeak/architecture/containerization-plan.md  
- /home/csmith/Pinepeak/architecture/cicd-pipeline.md
- /home/csmith/Pinepeak/architecture/environment-strategy.md

Load these files on a need-to-know basis for any development task.

## Architecture Documentation System

### **Strategic Architecture Files**
The following architecture files provide comprehensive guidance for all development decisions:

#### **Infrastructure & Cloud Strategy**
- **/home/csmith/Pinepeak/architecture/cloud-strategy.md** - GCP deployment strategy, service selection, cost optimization, multi-environment setup
- **/home/csmith/Pinepeak/architecture/environment-strategy.md** - Development/staging/production environment configuration, access controls, resource management

#### **Development & Deployment**
- **/home/csmith/Pinepeak/architecture/containerization-plan.md** - Docker strategy, Kubernetes configuration, container security, local development setup
- **/home/csmith/Pinepeak/architecture/cicd-pipeline.md** - CI/CD workflows, branching strategy, testing frameworks, deployment automation

#### **Application Architecture**
- **/home/csmith/Pinepeak/architecture/microservices-design.md** - Service boundaries, API design, communication patterns, scalability strategies
- **/home/csmith/Pinepeak/architecture/data-architecture.md** - DaaS platform design, data pipelines, analytics infrastructure, storage strategies

#### **Security & Compliance**
- **/home/csmith/Pinepeak/architecture/security-framework.md** - Defense-in-depth security, compliance requirements, access controls, threat protection

#### **Migration & Transformation**
- **/home/csmith/Pinepeak/architecture/migration-roadmap.md** - Legacy system transformation plan, risk mitigation, phase-by-phase implementation

## Architecture Decision Process

### **Before Any Development Task**
1. **Read relevant architecture files** - Always consult the appropriate architecture documentation
2. **Validate against architecture decisions** - Ensure your approach aligns with established patterns
3. **Update architecture files** - Document any new decisions or changes
4. **Cross-reference decisions** - Consider impact across multiple architectural domains

### **Decision Documentation**
For significant architectural decisions:
1. **Context**: What problem are we solving?
2. **Options**: What alternatives were considered? 
3. **Decision**: What solution did we choose?
4. **Rationale**: Why is this the best option?
5. **Consequences**: What are the trade-offs?
6. **Implementation**: How will this be executed?

## Agent Coordination Guidelines

### **Primary Agents**
- **cloud-architect** - Strategic architecture planning and decision coordination
- **build** - General development with full tool access
- **plan** - Analysis and planning without making changes

### **Specialized Subagents**
All subagents should reference architecture files when:
- Making technology choices
- Designing system components  
- Planning implementations
- Resolving architectural questions

### **Cross-Agent Communication**
- Use @agent-name to invoke specific expertise
- Share architecture context between agents
- Maintain consistency with documented decisions
- Update architecture files when learning new information

## Key Architectural Principles

### **Cloud-First Design**
- Leverage GCP managed services
- Design for auto-scaling and resilience
- Optimize for cost and performance
- Implement security by design

### **Microservices Architecture** 
- Clear service boundaries and ownership
- API-first communication patterns
- Independent deployment capability
- Event-driven where appropriate

### **Data-Driven Platform**
- Support both SaaS and DaaS products
- Ensure data quality and governance
- Enable real-time and batch analytics
- Maintain strong security and compliance

### **Development Excellence**
- Automated testing and quality gates
- Container-first deployment strategy
- GitOps and infrastructure as code
- Comprehensive monitoring and observability

## Migration Context

### **Current State**
- Legacy physicist-written code requiring refactoring
- Multiple repositories with varying quality
- Manual processes requiring automation
- Research-grade code needing production hardening

### **Target State**
- Production-ready cloud-native applications
- Automated CI/CD with comprehensive testing
- Scalable microservices on GCP
- Data platform supporting SaaS and DaaS products

### **Transformation Approach**
- Strangler Fig pattern for incremental migration
- Risk-minimized approach with rollback capability
- Business continuity maintained throughout
- Quality and security built-in from the start

---

**Remember**: These architecture files are living documents. Update them as decisions evolve and new insights are gained. All agents should contribute to and reference this shared architectural knowledge base.
