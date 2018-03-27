-- title: rawkey
-- version: 1.0.0
-- author: Andrew Zyabin
-- desc: a library cart
-- input: keyboard
-- script: lua
-- license: MIT

--[[
This is a library cartridge which code
you can use in your own games for the
TIC. The MIT License for that is
included below.
]]--

--[[
MIT License

Copyright (c) 2018-2018, Andrew Zyabin

Permission is hereby granted, free of
charge, to any person obtaining a copy
of this software and associated
documentation files (the "Software"),
to deal in the Software without
restriction, including without
limitation the rights to use, copy,
modify, merge, publish, distribute,
sublicense, and/or sell copies of the
Software, and to permit persons to whom
the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this
permission notice shall be included in
all copies or substantial portions of
the Software.

THE SOFTWARE IS PROVIDED "AS IS",
WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED
TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF
CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS
IN THE SOFTWARE.
]]--

--[[
You could include the License above in
your cart's source code, but that's
unwieldy. This cart weighs 1956/65536
bytes, after all.

You can also attach the License with
the cart, in a file called
LICENSE-rawkey or something.
]]--

-- | Return a raw key packet (little-endian) from the TIC.
function rawkey()
	return peek(0xff8b) << 24 | peek(0xff8a) << 16 | peek(0xff89) << 8 | peek(0xff88)
end

function TIC()
	cls(1)
	print('This is a library cartridge.', 8, 8)
	print('Go ahead and use it! :)', 8, 16)
	print('Demo: press any key', 8, 32, 14)
	print('rawkey() == ' .. rawkey(), 8, 40)
end
