const pickrContainer = document.querySelector('.pickr-container');
const themeContainer = document.querySelector('.theme-container');

const themes = [      
    [
        'nano',
        {
            name: "Cor primária",            
            defaultRepresentation: 'RGBA',
            type: true,
            components: {
                preview: false,
                opacity: false,
                hue: true,
                interaction: {
                    hex: false,
                    rgba: false,
                    hsva: false,
                    input: false,
                    clear: false,
                    save: false
                }
            }
        }
    ],
    [
        'nano',
        {
            name: "Cor secundária",            
            type: false,
            defaultRepresentation: 'RGBA',
            components: {
                preview: false,
                opacity: false,
                hue: true,
                interaction: {
                    hex: false,
                    rgba: false,
                    hsva: false,
                    input: false,
                    clear: false,
                    save: false
                }
            }
        }
    ]
];

const buttons = [];
let pickr = null;

for (const [theme, config] of themes) {
    const button = document.createElement('button');
    button.innerHTML = config.name;
    
    buttons.push(button);

    button.addEventListener('click', () => {
        const el = document.createElement('p');
        pickrContainer.appendChild(el);

        // Delete previous instance
        if (pickr) {
            pickr.destroyAndRemove();
        }

        // Apply active class
        for (const btn of buttons) {
            btn.classList[btn === button ? 'add' : 'remove']('active');
        }

        // Create fresh instance
        pickr = new Pickr(Object.assign({
            el, theme,
            default: '#42445a'
        }, config));

        // Set events
        pickr.on('init', instance => {
        //    console.log('Event: "init"', instance);
        }).on('save', (color, instance) => {
          //  console.log('Event: "save"', color, instance);
            $.post("https://esx_vehicleshop/RGBVehicle", JSON.stringify({primary: config.type, color: color.toRGBA()}));
        }).on('change', (color, source, instance) => {
          //  console.log('Event: "change"', color, source, instance);
            $.post("https://esx_vehicleshop/RGBVehicle", JSON.stringify({primary: config.type, color: color.toRGBA()}));
        })
    });

    themeContainer.appendChild(button);

    button.setAttribute("onclick","openOption()");
}

buttons[0].click();



function openOption(option){

    pickr.show();
  
}