---
layout: page
title: Program
permalink: /program/
sections:
 - lecture: Lectures
 - practical: Practical Hands-on Sessions
 - tool: Academic & Industry Tool Presentations
---

The program consists of lectures and practical sessions by renowned speakers on the following topics.

# Overview
Note that the program is subject to minor changes in case of scheduling or speaker availability problems.

<table class="program">
<tr>
  <th style="width:10%"></th>
  <th style="width:30%">Thursday</th>
  <th style="width:30%">Friday</th>
  <th style="width:30%">Saturday</th>
</tr>
<tr>
  <td>08:30 - 09:00</td>
  <td>Welcome</td>
  <td></td>
  <td></td>
</tr>
<tr>
<td>09:00 - 10:30</td>
<td><a href="#MDE-Foundations">MDE Foundations</a><br /><span class="author">by Hans Vangheluwe</span></td>
<td><a href="#Model-Transformation">Model Transformation and Management</a><br /><span class="author">by Dimitris Kolovos</span></td>
<td><a href="#Model-Evolution">Model Evolution and Co-evolution</a><br /><span class="author">by Alexander Egyed</span></td>
</tr>
  
<tr>
<td>10:30 - 11:00</td>
<td colspan="3"><b>Coffee Break</b></td>
</tr>
  
<tr>
<td>11:00 - 12:30</td>
<td><a href="#Engineering-Modeling-Languages">Engineering Modeling Languages</a><br /><span class="author">by Benoît Combemale</span></td>
<td><a href="#Model-Based-Variability-Management">Model-Based Variability Management</a><br /><span class="author">by Rick Rabiser</span></td>
<td><a href="#Models-At-Runtime">Models at Runtime and Self-Adaptive Systems</a><br /><span class="author">by Sebastian Götz and Nelly Bencomo</span></td>
</tr>
<tr>
<td>12:30 - 13:30</td>
<td colspan="3"><b>Lunch Break</b></td>
</tr>
<tr>
<td rowspan="2">13:30 - 15:30</td>
<td><a href="#Design-Science-for-MDE">Design Science for Model-Driven Software and Systems Engineering</a><br /><span class="author">by Manuel Wimmer</span></td>
<td><a href="#MDE-Hands-On">MDE Hands-On</a><br /><span class="author">by Steffen Zschaler</span></td>
<td><a href="#Engineering-Digital-Twins">Engineering Digital Twins</a><br /><span class="author">by Judith Michael</span></td>
</tr>
<tr>
<td><a href="#Create-Your-Career-Path">Create Your Own Career Path</a><br /><span class="author">by Øystein Haugen</span></td>
<td><a href="#Refinery">Refinery</a><br /><span class="author">by Kristóf Marussy</span></td>
<td><a href="#Foundations-And-Applications-Of-AI-and-MDE">Foundations and Applications of AI and MDE</a><br /><span class="author">by Lola Burgueño</span></td>
</tr>
<tr>
<td>15:30 - 16:00</td>
<td colspan="3"><b>Coffee Break</b></td>
</tr>
<tr>
<td rowspan="2">16:00 - 18:00</td>
<td><a href="#Developing-Next-Generation-Modeling-Tools">Developing Next Generation Modeling Tools with Open-Source Technologies</a><br /><span class="author">by Philip Langer and Dominik Bork</span></td>
<td><a href="#Netgrif">Practical Experience with Petriflow: Enriched Process Models Serving as Implementation</a><br /><span class="author">by Gabriel Juhás, Netgrif</span></td>
<td><a href="#Obeo">Industrial Tool Presentation</a><br /><span class="author">by Obeo</span></td>
</tr>
<tr>
<td rowspan="2"><br/>Student Pitch Presentations & Pizza Night<br/><br/></td>
<td><br/>(Student Presentations)<br/><br/></td>
<td><br/>(Student Presentations)<br/><br/></td>

</tr>
<tr style="background-color: lightgray;">
<td>Evening</td>
<td><b>Social Event</b><br/>(Dinner)</td>
<td><b>Social Event</b><br/>("Pub night")</td>
</tr>
</table>


# Sessions Details
{% for section in page.sections %}{% for sec in section %}
<h2 style="text-decoration:underline;"> {{sec[1]}} </h2>

{% assign posts = site.posts | sort: 'order' %}

{% for post in posts %}{% if post.sessiontype == sec[0] %}
  <h3 id="{{ post.permalink }}">{{ post.title }}</h3>
  <p>(by {{post.speaker}})</p>
  
  <div style="display:flex;align-items:center; justify-content: center;">
  {% if post.picture %}
  <img src="{{post.picture}}" style="height:150px;" alt="{{post.speaker}}" />
  {% endif %}
  <div style="padding:15px;width:100%;">
   {{ post.content }}
  </div>
  </div>
{% endif %}{% endfor %}
{% endfor %}{% endfor %} 




