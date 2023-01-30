local xx = 200;
local yy = 130;
local ofs = 20;
local ofs2 = 20;
local xx2 = 300;
local yy2 = 130;
local followchars = true;

function onCreate()
	makeLuaSprite('polusFront', 'polus/polusFilled', -600, -300);
	setScrollFactor('polusFront', 1, 1);
	
	makeLuaSprite('polusHills', 'polus/polusHills', -600, -300);
	setScrollFactor('polusHills', 0.9, 0.9);

	makeLuaSprite('polusFence', 'polus/polusFence', -600, -300);
	setScrollFactor('polusFence', 1, 1);
	
	makeLuaSprite('polusRocket', 'polus/polusRocketLol', -600, -300);
	setScrollFactor('polusRocket', 1, 1);

	makeLuaSprite('polusRocks', 'polus/polusRocks', -600, -300);
	setScrollFactor('polusRocks', 1, 1);
	
	makeLuaSprite('polusSky', 'polus/polusSky', -600, -300);
	setScrollFactor('polusSky', 0.9, 0.9);

	makeLuaSprite('polusWereHouse', 'polus/polusWereHouse', -600, -300);
	setScrollFactor('polusWereHouse', 1, 1);

	makeAnimatedLuaSprite('snow','polus-new/snow', -650, -600)
	luaSpriteAddAnimationByPrefix('snow', 'idle', 'snow', 24, true);
	setScrollFactor('snow', 0.9, 0.9);
	objectPlayAnimation('snow' ,'idle',true);

	addLuaSprite('polusSky', false);
	addLuaSprite('polusHills', false);
	addLuaSprite('polusRocks', false);
	addLuaSprite('polusWereHouse', false);
	addLuaSprite('polusRocket', false);
	addLuaSprite('polusFence', false);
	addLuaSprite('polusFront', false);
	addLuaSprite('snow', true);

	
end

function onUpdate()
    
	if followchars == true then
		
        if mustHitSection == false then

			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
           
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end

            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end

			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            
        else
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
           
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end
			
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFTmiss' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHTmiss' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singUPmiss' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
           
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWNmiss' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end

            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
		
        end
    
        triggerEvent('Camera Follow Pos','','')
    
	end
    
end
