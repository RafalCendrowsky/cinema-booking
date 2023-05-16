# Cinema Booking Service

## Assumptions and Architectural Decisions

In the course of development some considerations had to be made regarding the architecture of this application. The reasoning
behind almost all of them was quite straightforward: **keep it simple**. The overarching assumption was that this system 
was intended to be used by a single multiplex cinema. In such a case, a short development time, and therefore cost, would be 
of much greater importance than the issue of scalability. 