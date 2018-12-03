$(document).ready(function () {
    "use strict";

    //Revolution Slider
    jQuery('#rev_slider_1').show().revolution({
        /* Options are 'auto', 'fullwidth' or 'fullscreen' */
        sliderLayout: 'auto',
        // gridwidth: 1140,
        gridheight:1000,
        /* Navigation arrows and bullets */
        navigation: {
     
            arrows: {
         
                enable: true,
                style: 'gyges',
                tmp: '',
                rtl: false,
                hide_onleave: false,
                hide_onmobile: true,
                hide_under: 0,
                hide_over: 9999,
                hide_delay: 200,
                hide_delay_mobile: 1200,
         
                left: {
                    container: 'slider',
                    h_align: 'right',
                    v_align: 'center',
                    h_offset: 80,
                    v_offset: 80
                },
         
                right: {
                    container: 'slider',
                    h_align: 'right',
                    v_align: 'center',
                    h_offset: 80,
                    v_offset: 0
                }
            }
        },
  });

/*revolation slider two*/
        
  //Revolution Slider
  jQuery('#rev_slider_2').show().revolution({
    /* Options are 'auto', 'fullwidth' or 'fullscreen' */
    sliderLayout: 'auto',
    // gridwidth: 1140,
    gridheight:800,
    /* Navigation arrows and bullets */
    	navigation: {
     
            arrows: {
         
                enable: true,
                style: '',
                tmp: '',
                rtl: false,
                hide_onleave: false,
                hide_onmobile: true,
                hide_under: 0,
                hide_over: 9999,
                hide_delay: 200,
                hide_delay_mobile: 1200,
         
                // left: {
                //     container: 'slider',
                //     h_align: 'right',
                //     v_align: 'center',
                //     h_offset: 50,
                //     v_offset: 50
                // },
         
                // right: {
                //     container: 'slider',
                //     h_align: 'right',
                //     v_align: 'center',
                //     h_offset: 50,
                //     v_offset: 0
                // }
            }
        },
    });

  //Revolution Slider home 5
jQuery('#rev_slider_5').show().revolution({
        sliderLayout: 'auto',
        gridheight:1000
    });

});