library ieee;
use ieee.std_logic_1164.all;

function det_2x2(
    m11 : Float32;
    m12 : Float32;
    
    m21 : Float32;
    m22 : Float32;
    ) return Float32 is
begin
    return m11 * m22 - m12 * m21
end function;

function det_3x3(
    m11 : Float32;
    m12 : Float32;
    m13 : Float32;
    
    m21 : Float32;
    m22 : Float32;
    m23 : Float32;
    
    m31 : Float32;
    m32 : Float32;
    m33 : Float32;
    ) return Float32 is
begin
    return m11 * det_2x2(m22, m23, m32, m33) - m12 * det_2x2(m21, m23, m31, m33) + m13 * det_2x2(m21, m22, m31, m32)
end function;

function det_4x4(
    m11 : Float32;
    m12 : Float32;
    m13 : Float32;
    m14 : Float32;
    
    m21 : Float32;
    m22 : Float32;
    m23 : Float32;
    m24 : Float32;
    
    m31 : Float32;
    m32 : Float32;
    m33 : Float32;
    m34 : Float32;
    
    m41 : Float32;
    m42 : Float32;
    m43 : Float32;
    m44 : Float32;
    ) return Float32 is
begin
    return m11 * det_3x3(m22, m23, m24, m32, m33, m34, m42, m43, m44) - m12 * det_3x3(m21, m23, m24, m31, m33, m34, m41, m43, m44) + m13 * det_3x3(m21, m22, m24, m31, m32, m34, m41, m42, m44) - m14 * det_3x3(m21, m22, m23, m31, m32, m33, m41, m42, m43)
end function;
