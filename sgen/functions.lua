function match_remaining(n, ...)
   local preimage = {}
   local used = {}
   for i=1,select("#", ...) do
      local nl = select(i, ...)
      for k,v in pairs(nl) do
	 if(not used[v]) then
	    if(preimage[k]) then
	       preimage[string.format("%s_%d", k, i)] = v
	    else
	       preimage[k] = v
	    end
	    used[v] = true
	 end
      end
   end
   local nn = {}
   for i=1,#n do
      if(not used[n[i]]) then
	 nn[#nn+1] = n[i]
      end
   end
   return make_match(nn, preimage)
end

function mmatch(n, str, ...)
   local preimage = {}
   local used = {}
   for i=1,select("#", ...) do
      local nl = select(i, ...)
      for k,v in pairs(nl) do
	 if(not used[v]) then
	    if(preimage[k]) then
	       preimage[string.format("%s_%d", k, i)] = v
	    else
	       preimage[k] = v
	    end
	    used[v] = true
	 end
      end
   end
   local nn = {}
   for i=1,#n do
      if(not used[n[i]]) then
	 nn[#nn+1] = n[i]
      end
   end
   return match(nn, str, preimage)
end

function sort_and_print(nl)
   local n1 = {}
   local n2 = {}
   for k,v in pairs(nl) do
      if(v.pos) then
	 local x, y = v:pos()
	 local id = (4666 - y)*5333 + x
	 n1[id] = k
	 n2[#n2+1] = id
      end
   end
   table.sort(n2)
   for i=1,#n2 do
      local k = n1[n2[i]]
      local v = nl[k]
      local x, y = v:pos()
      print(x, y, k, v)
   end
end

function build_hash(n)
   local r = {}
   for k,v in pairs(n) do
      r[v] = k
   end
   return r
end

function merge(a, b)
   local r1 = {}
   for i=1,#a do
      r1[a[i]] = a[i]
   end
   for i=1,#b do
      r1[b[i]] = b[i]
   end
   local r2 = {}
   for k,v in pairs(r1) do
      r2[#r2+1] = v
   end
   return r2
end

function kill(a1, a2)
   local r = {}
   for k,v in pairs(a2) do r[v] = true end
   local d = {}
   for k,v in pairs(a1) do if(r[v]) then d[#d+1] = k end end
   for i=1,#d do a1[d[i]] = nil end
end

function find(a, n)
   for k,v in pairs(a) do if(v == n) then print(k,v) end end
end

function rename(nl, prefix)
   if(not nl) then
      return
   end
   if(not prefix) then
      prefix = ""
   end
   for k,v in pairs(nl) do
      if(type(v) == table) then
	 rename(v, prefix .. k .. ".")
      else
	 v:set_name(prefix .. k)
      end
   end
end
