// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Buffer<float4> t0 : register(t0);

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[107];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[96].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[106].x;
    r0.y = (uint)cb0[97].x;
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r4.w = t0.Load(r0.w).x;
    r0.y = r1.w + r1.w;
    r0.y = frac(r0.y);
    r5.w = -r0.y;
    r0.y = cb13[0].y + r4.w;
    r0.y = 0.899999976 * r0.y;
    r0.y = frac(r0.y);
    r6.z = 1 + -r0.y;
    r0.y = cb13[0].y + r3.w;
    r0.y = 0.200000003 * r0.y;
    r0.y = frac(r0.y);
    r6.w = 1 + -r0.y;
    r0.y = saturate(r2.w);
    r7.xyzw = r0.yyyy * float4(0,149.746948,2.20195007,-6.87144518) + float4(0,-39.7349243,-6.42979383,-0.488480002);
    r8.xyzw = r0.yyyy * float4(7.64588213,5.76460218,3.33597302,2.02762198) + float4(0.436666995,0.467193991,0.523563981,0.620618999);
    r0.z = r0.y * r0.y;
    r7.xyzw = r7.xyzw * r0.zzzz + r8.xyzw;
    r8.xyzw = cmp(r0.yyyy >= float4(0,0.0128889997,0.0902220011,0.233611003));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xyz = r8.xyz * r7.xyz;
    r0.w = 2;
    r7.xy = r0.ww * r7.xy;
    r7.x = r7.x + r7.y;
    r0.w = r0.w * r7.z + r7.x;
    r0.w = r7.w * r8.w + r0.w;
    r7.xyzw = r0.yyyy * float4(6.89344788,8.73603821,1.34378099,-0.662922025) + float4(-13.4976196,-14.9986877,-0.0397339985,4.91442919);
    r8.xyzw = r0.yyyy * float4(6.06053209,6.25890398,-3.803406,-7.85343885) + float4(0.209470004,0.25632,2.50572991,3.60161591);
    r9.x = r0.y * -0.0702259988 + 0.0702259988;
    r7.xyzw = r7.xyzw * r0.zzzz + r8.xyzw;
    r8.xyzw = cmp(r0.yyyy >= float4(0.289999992,0.451721996,0.692332983,0.834333003));
    r10.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r0.yz = cmp(r0.yy >= float2(0.976333022,1));
    r8.yz = r0.yz ? float2(1,1) : 0;
    r9.yzw = r10.xyz + r10.yzw;
    r9.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.yzw;
    r9.yzw = float3(0.5,0.5,0.5) * r9.yzw;
    r9.yzw = frac(r9.yzw);
    r7.xyz = r9.yzw * r7.xyz;
    r0.z = r8.y + r8.z;
    r0.z = 9.99999997e-007 + r0.z;
    r0.z = 0.5 * r0.z;
    r0.z = frac(r0.z);
    r8.y = 2;
    r7.xy = r8.yy * r7.xy;
    r0.z = dot(r0.zz, r9.xx);
    r7.x = r7.x + r7.y;
    r7.x = r8.y * r7.z + r7.x;
    r7.x = r7.w * r10.w + r7.x;
    r0.w = r8.x ? r7.x : r0.w;
    r0.y = saturate(r0.y ? r0.z : r0.w);
    r4.x = r0.y * 0.225000009 + 0.075000003;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r6.xy = float2(1,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r6.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.yyyy, r2.xyzw
    r5.xyz = r3.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.zzzz, r5.xyzw
    r4.y = 1;
    r4.z = r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.wwww, r4.xyzw
  }
  return;
}