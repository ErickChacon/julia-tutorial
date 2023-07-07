```@meta
EditURL = "https://github.com/ErickChacon/julia-tutorial/blob/main/scripts/30-makie.jl"
```

# Visualize with Makie

## Basic Makie

````julia
using DataFrames
import CairoMakie as MK
using AlgebraOfGraphics

df = DataFrame(id = 1:100, x = rand(100), y = rand(100))
````

```@raw html
<div><div style = "float: left;"><span>100×3 DataFrame</span></div><div style = "clear: both;"></div></div><div class = "data-frame" style = "overflow-x: scroll;"><table class = "data-frame" style = "margin-bottom: 6px;"><thead><tr class = "header"><th class = "rowNumber" style = "font-weight: bold; text-align: right;">Row</th><th style = "text-align: left;">id</th><th style = "text-align: left;">x</th><th style = "text-align: left;">y</th></tr><tr class = "subheader headerLastRow"><th class = "rowNumber" style = "font-weight: bold; text-align: right;"></th><th title = "Int64" style = "text-align: left;">Int64</th><th title = "Float64" style = "text-align: left;">Float64</th><th title = "Float64" style = "text-align: left;">Float64</th></tr></thead><tbody><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">1</td><td style = "text-align: right;">1</td><td style = "text-align: right;">0.736294</td><td style = "text-align: right;">0.510015</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">2</td><td style = "text-align: right;">2</td><td style = "text-align: right;">0.039636</td><td style = "text-align: right;">0.561576</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">3</td><td style = "text-align: right;">3</td><td style = "text-align: right;">0.177274</td><td style = "text-align: right;">0.754906</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">4</td><td style = "text-align: right;">4</td><td style = "text-align: right;">0.766007</td><td style = "text-align: right;">0.59547</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">5</td><td style = "text-align: right;">5</td><td style = "text-align: right;">0.0443716</td><td style = "text-align: right;">0.0256265</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">6</td><td style = "text-align: right;">6</td><td style = "text-align: right;">0.0521858</td><td style = "text-align: right;">0.521049</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">7</td><td style = "text-align: right;">7</td><td style = "text-align: right;">0.79144</td><td style = "text-align: right;">0.969689</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">8</td><td style = "text-align: right;">8</td><td style = "text-align: right;">0.177456</td><td style = "text-align: right;">0.416403</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">9</td><td style = "text-align: right;">9</td><td style = "text-align: right;">0.22313</td><td style = "text-align: right;">0.0687959</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">10</td><td style = "text-align: right;">10</td><td style = "text-align: right;">0.24666</td><td style = "text-align: right;">0.899376</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">11</td><td style = "text-align: right;">11</td><td style = "text-align: right;">0.431703</td><td style = "text-align: right;">0.343768</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">12</td><td style = "text-align: right;">12</td><td style = "text-align: right;">0.327126</td><td style = "text-align: right;">0.33871</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">13</td><td style = "text-align: right;">13</td><td style = "text-align: right;">0.0323462</td><td style = "text-align: right;">0.476743</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">14</td><td style = "text-align: right;">14</td><td style = "text-align: right;">0.954552</td><td style = "text-align: right;">0.382202</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">15</td><td style = "text-align: right;">15</td><td style = "text-align: right;">0.376875</td><td style = "text-align: right;">0.963074</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">16</td><td style = "text-align: right;">16</td><td style = "text-align: right;">0.568549</td><td style = "text-align: right;">0.00766757</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">17</td><td style = "text-align: right;">17</td><td style = "text-align: right;">0.469086</td><td style = "text-align: right;">0.0204333</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">18</td><td style = "text-align: right;">18</td><td style = "text-align: right;">0.718538</td><td style = "text-align: right;">0.32055</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">19</td><td style = "text-align: right;">19</td><td style = "text-align: right;">0.568509</td><td style = "text-align: right;">0.150416</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">20</td><td style = "text-align: right;">20</td><td style = "text-align: right;">0.201948</td><td style = "text-align: right;">0.632994</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">21</td><td style = "text-align: right;">21</td><td style = "text-align: right;">0.261919</td><td style = "text-align: right;">0.352827</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">22</td><td style = "text-align: right;">22</td><td style = "text-align: right;">0.633678</td><td style = "text-align: right;">0.565864</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">23</td><td style = "text-align: right;">23</td><td style = "text-align: right;">0.361258</td><td style = "text-align: right;">0.167995</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">24</td><td style = "text-align: right;">24</td><td style = "text-align: right;">0.669032</td><td style = "text-align: right;">0.424338</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">25</td><td style = "text-align: right;">25</td><td style = "text-align: right;">0.0241815</td><td style = "text-align: right;">0.600465</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">26</td><td style = "text-align: right;">26</td><td style = "text-align: right;">0.700284</td><td style = "text-align: right;">0.728036</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">27</td><td style = "text-align: right;">27</td><td style = "text-align: right;">0.488703</td><td style = "text-align: right;">0.761119</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">28</td><td style = "text-align: right;">28</td><td style = "text-align: right;">0.966649</td><td style = "text-align: right;">0.409143</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">29</td><td style = "text-align: right;">29</td><td style = "text-align: right;">0.413595</td><td style = "text-align: right;">0.356636</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">30</td><td style = "text-align: right;">30</td><td style = "text-align: right;">0.278133</td><td style = "text-align: right;">0.242152</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">31</td><td style = "text-align: right;">31</td><td style = "text-align: right;">0.594838</td><td style = "text-align: right;">0.206364</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">32</td><td style = "text-align: right;">32</td><td style = "text-align: right;">0.754553</td><td style = "text-align: right;">0.962776</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">33</td><td style = "text-align: right;">33</td><td style = "text-align: right;">0.532873</td><td style = "text-align: right;">0.815826</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">34</td><td style = "text-align: right;">34</td><td style = "text-align: right;">0.291369</td><td style = "text-align: right;">0.565792</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">35</td><td style = "text-align: right;">35</td><td style = "text-align: right;">0.136649</td><td style = "text-align: right;">0.184835</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">36</td><td style = "text-align: right;">36</td><td style = "text-align: right;">0.573304</td><td style = "text-align: right;">0.385555</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">37</td><td style = "text-align: right;">37</td><td style = "text-align: right;">0.160129</td><td style = "text-align: right;">0.604397</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">38</td><td style = "text-align: right;">38</td><td style = "text-align: right;">0.764559</td><td style = "text-align: right;">0.277657</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">39</td><td style = "text-align: right;">39</td><td style = "text-align: right;">0.27587</td><td style = "text-align: right;">0.211875</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">40</td><td style = "text-align: right;">40</td><td style = "text-align: right;">0.652966</td><td style = "text-align: right;">0.835606</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">41</td><td style = "text-align: right;">41</td><td style = "text-align: right;">0.0352995</td><td style = "text-align: right;">0.906094</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">42</td><td style = "text-align: right;">42</td><td style = "text-align: right;">0.565714</td><td style = "text-align: right;">0.424253</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">43</td><td style = "text-align: right;">43</td><td style = "text-align: right;">0.980027</td><td style = "text-align: right;">0.28727</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">44</td><td style = "text-align: right;">44</td><td style = "text-align: right;">0.825356</td><td style = "text-align: right;">0.631472</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">45</td><td style = "text-align: right;">45</td><td style = "text-align: right;">0.440683</td><td style = "text-align: right;">0.398334</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">46</td><td style = "text-align: right;">46</td><td style = "text-align: right;">0.761019</td><td style = "text-align: right;">0.437472</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">47</td><td style = "text-align: right;">47</td><td style = "text-align: right;">0.208545</td><td style = "text-align: right;">0.557865</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">48</td><td style = "text-align: right;">48</td><td style = "text-align: right;">0.0239786</td><td style = "text-align: right;">0.856715</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">49</td><td style = "text-align: right;">49</td><td style = "text-align: right;">0.33356</td><td style = "text-align: right;">0.977673</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">50</td><td style = "text-align: right;">50</td><td style = "text-align: right;">0.496238</td><td style = "text-align: right;">0.488979</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">51</td><td style = "text-align: right;">51</td><td style = "text-align: right;">0.763473</td><td style = "text-align: right;">0.0559403</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">52</td><td style = "text-align: right;">52</td><td style = "text-align: right;">0.0960166</td><td style = "text-align: right;">0.358134</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">53</td><td style = "text-align: right;">53</td><td style = "text-align: right;">0.127505</td><td style = "text-align: right;">0.828145</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">54</td><td style = "text-align: right;">54</td><td style = "text-align: right;">0.508775</td><td style = "text-align: right;">0.15574</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">55</td><td style = "text-align: right;">55</td><td style = "text-align: right;">0.424036</td><td style = "text-align: right;">0.93344</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">56</td><td style = "text-align: right;">56</td><td style = "text-align: right;">0.423046</td><td style = "text-align: right;">0.316764</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">57</td><td style = "text-align: right;">57</td><td style = "text-align: right;">0.484889</td><td style = "text-align: right;">0.564883</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">58</td><td style = "text-align: right;">58</td><td style = "text-align: right;">0.551723</td><td style = "text-align: right;">0.245126</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">59</td><td style = "text-align: right;">59</td><td style = "text-align: right;">0.061263</td><td style = "text-align: right;">0.63168</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">60</td><td style = "text-align: right;">60</td><td style = "text-align: right;">0.429524</td><td style = "text-align: right;">0.378976</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">61</td><td style = "text-align: right;">61</td><td style = "text-align: right;">0.991416</td><td style = "text-align: right;">0.520887</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">62</td><td style = "text-align: right;">62</td><td style = "text-align: right;">0.223968</td><td style = "text-align: right;">0.180201</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">63</td><td style = "text-align: right;">63</td><td style = "text-align: right;">0.972266</td><td style = "text-align: right;">0.698862</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">64</td><td style = "text-align: right;">64</td><td style = "text-align: right;">0.0133337</td><td style = "text-align: right;">0.914533</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">65</td><td style = "text-align: right;">65</td><td style = "text-align: right;">0.977389</td><td style = "text-align: right;">0.0643897</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">66</td><td style = "text-align: right;">66</td><td style = "text-align: right;">0.647002</td><td style = "text-align: right;">0.956274</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">67</td><td style = "text-align: right;">67</td><td style = "text-align: right;">0.0499675</td><td style = "text-align: right;">0.0124499</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">68</td><td style = "text-align: right;">68</td><td style = "text-align: right;">0.684566</td><td style = "text-align: right;">0.646835</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">69</td><td style = "text-align: right;">69</td><td style = "text-align: right;">0.763337</td><td style = "text-align: right;">0.125261</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">70</td><td style = "text-align: right;">70</td><td style = "text-align: right;">0.734366</td><td style = "text-align: right;">0.528683</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">71</td><td style = "text-align: right;">71</td><td style = "text-align: right;">0.203305</td><td style = "text-align: right;">0.371931</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">72</td><td style = "text-align: right;">72</td><td style = "text-align: right;">0.253469</td><td style = "text-align: right;">0.757928</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">73</td><td style = "text-align: right;">73</td><td style = "text-align: right;">0.596205</td><td style = "text-align: right;">0.820105</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">74</td><td style = "text-align: right;">74</td><td style = "text-align: right;">0.261863</td><td style = "text-align: right;">0.0534833</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">75</td><td style = "text-align: right;">75</td><td style = "text-align: right;">0.353269</td><td style = "text-align: right;">0.310668</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">76</td><td style = "text-align: right;">76</td><td style = "text-align: right;">0.089033</td><td style = "text-align: right;">0.65899</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">77</td><td style = "text-align: right;">77</td><td style = "text-align: right;">0.700645</td><td style = "text-align: right;">0.0215993</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">78</td><td style = "text-align: right;">78</td><td style = "text-align: right;">0.617229</td><td style = "text-align: right;">0.880107</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">79</td><td style = "text-align: right;">79</td><td style = "text-align: right;">0.131757</td><td style = "text-align: right;">0.0267807</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">80</td><td style = "text-align: right;">80</td><td style = "text-align: right;">0.201747</td><td style = "text-align: right;">0.786861</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">81</td><td style = "text-align: right;">81</td><td style = "text-align: right;">0.887374</td><td style = "text-align: right;">0.25344</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">82</td><td style = "text-align: right;">82</td><td style = "text-align: right;">0.456522</td><td style = "text-align: right;">0.944719</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">83</td><td style = "text-align: right;">83</td><td style = "text-align: right;">0.265195</td><td style = "text-align: right;">0.867363</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">84</td><td style = "text-align: right;">84</td><td style = "text-align: right;">0.567483</td><td style = "text-align: right;">0.23265</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">85</td><td style = "text-align: right;">85</td><td style = "text-align: right;">0.855062</td><td style = "text-align: right;">0.738027</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">86</td><td style = "text-align: right;">86</td><td style = "text-align: right;">0.103912</td><td style = "text-align: right;">0.114113</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">87</td><td style = "text-align: right;">87</td><td style = "text-align: right;">0.247852</td><td style = "text-align: right;">0.137192</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">88</td><td style = "text-align: right;">88</td><td style = "text-align: right;">0.716454</td><td style = "text-align: right;">0.644546</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">89</td><td style = "text-align: right;">89</td><td style = "text-align: right;">0.775019</td><td style = "text-align: right;">0.306033</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">90</td><td style = "text-align: right;">90</td><td style = "text-align: right;">0.712483</td><td style = "text-align: right;">0.7745</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">91</td><td style = "text-align: right;">91</td><td style = "text-align: right;">0.238671</td><td style = "text-align: right;">0.709361</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">92</td><td style = "text-align: right;">92</td><td style = "text-align: right;">0.882368</td><td style = "text-align: right;">0.507943</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">93</td><td style = "text-align: right;">93</td><td style = "text-align: right;">0.272327</td><td style = "text-align: right;">0.895802</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">94</td><td style = "text-align: right;">94</td><td style = "text-align: right;">0.661016</td><td style = "text-align: right;">0.062018</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">95</td><td style = "text-align: right;">95</td><td style = "text-align: right;">0.112262</td><td style = "text-align: right;">0.605589</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">96</td><td style = "text-align: right;">96</td><td style = "text-align: right;">0.724574</td><td style = "text-align: right;">0.354411</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">97</td><td style = "text-align: right;">97</td><td style = "text-align: right;">0.714626</td><td style = "text-align: right;">0.276978</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">98</td><td style = "text-align: right;">98</td><td style = "text-align: right;">0.797126</td><td style = "text-align: right;">0.167798</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">99</td><td style = "text-align: right;">99</td><td style = "text-align: right;">0.0207693</td><td style = "text-align: right;">0.432685</td></tr><tr><td class = "rowNumber" style = "font-weight: bold; text-align: right;">100</td><td style = "text-align: right;">100</td><td style = "text-align: right;">0.716491</td><td style = "text-align: right;">0.612539</td></tr></tbody></table></div>
```

````julia
fig = MK.lines(df.x, df.y)
MK.scatter!(df.x, df.y, color = :red)
MK.save("makie.pdf", fig) # src
````

````
CairoMakie.Screen{PDF}

````

````julia
fig = MK.Figure(backgroundcolor = :tomato)
MK.Axis(fig[1,1], title = "First figure")
MK.scatter!(df.x, df.y, color = :red)
MK.Axis(fig[1,2], title = "Second figure")
MK.lines!(df.x, df.y, color = :blue)
MK.save("makie.pdf", fig) # src
````

````
CairoMakie.Screen{PDF}

````

````julia
fig = MK.scatter(df.x, df.y, color = :red, label = "group 1")
MK.scatter!(rand(100), rand(100), color = :blue, label = "group 2")
MK.axislegend()
MK.save("makie.pdf", fig) # src
````

````
CairoMakie.Screen{PDF}

````

````julia
X = rand(100, 80)

fig, ax, hm = MK.heatmap(X, colormap = MK.Reverse(:RdBu))
MK.Colorbar(fig[1,2], hm)
MK.save("makie.pdf", fig) # src
````

````
CairoMakie.Screen{PDF}

````

## Algebra of Graphics

````julia
df.group = rand(string.(1:4), 100)
````

````
100-element Vector{String}:
 "3"
 "2"
 "1"
 "1"
 "1"
 "3"
 "3"
 "2"
 "2"
 "1"
 "3"
 "2"
 "2"
 "2"
 "2"
 "1"
 "2"
 "2"
 "2"
 "3"
 "2"
 "1"
 "3"
 "4"
 "2"
 "4"
 "3"
 "2"
 "3"
 "4"
 "3"
 "4"
 "4"
 "3"
 "2"
 "1"
 "2"
 "1"
 "1"
 "4"
 "4"
 "3"
 "2"
 "2"
 "3"
 "4"
 "1"
 "3"
 "3"
 "3"
 "3"
 "3"
 "4"
 "3"
 "2"
 "3"
 "1"
 "2"
 "4"
 "4"
 "1"
 "2"
 "2"
 "1"
 "2"
 "3"
 "4"
 "3"
 "4"
 "1"
 "4"
 "2"
 "3"
 "1"
 "1"
 "1"
 "4"
 "4"
 "4"
 "3"
 "4"
 "1"
 "2"
 "1"
 "4"
 "1"
 "4"
 "4"
 "2"
 "3"
 "3"
 "3"
 "2"
 "3"
 "1"
 "2"
 "3"
 "3"
 "1"
 "3"
````

````julia
g = data(df) * mapping(:x, :y) * visual(MK.Scatter)
fig = draw(g)
MK.save("makie.pdf", fig) # src
````

````
CairoMakie.Screen{PDF}

````

````julia
g = data(df) * mapping(:x, :y) * visual(MK.Lines, color = :red)
fig = draw(g)
MK.save("makie.pdf", fig) # src
````

````
CairoMakie.Screen{PDF}

````

````julia
g = data(df) * mapping(:x, :y, color = :group) *
    (visual(MK.Scatter) + visual(MK.Lines))
fig = draw(g)
MK.save("makie.pdf", fig) # src
````

````
CairoMakie.Screen{PDF}

````

````julia
g = data(df) * mapping(:x, :y, layout = :group, color = :group) *
    (visual(MK.Scatter) + visual(MK.Lines))
fig = draw(g)
MK.save("makie.pdf", fig) # src
````

````
CairoMakie.Screen{PDF}

````

