// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:19 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
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
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r4.yzw = t0.Load(r0.w).xyz;
    r0.yz = saturate(r4.yz);
    r0.y = r0.y * 0.199999988 + 0.300000012;
    r0.w = saturate(r2.w);
    r5.xyz = r0.www * float3(0.299999952,-20.27771,0) + float3(1,67.7488403,0);
    r0.y = r5.x * r0.y;
    r5.x = saturate(0.0399999991 * r1.w);
    r5.x = r5.x * 0.75 + 0.25;
    r6.z = r5.x * r0.y;
    r7.xyzw = r0.wwww * float4(16.408371,-40.9425659,-25.7512817,10.8047333) + float4(8.57586288,27.1803741,11.6098633,-18.9980469);
    r8.xyzw = r0.wwww * float4(0,-1.85286295,2.51265001,10.9656181) + float4(0,0.0582179986,-0.313659012,-1.08197796);
    r0.y = r0.w * r0.w;
    r7.xyzw = r7.xyzw * r0.yyyy + r8.xyzw;
    r8.xyzw = cmp(r0.wwww >= float4(0,0.0861110017,0.197221994,0.297221988));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xyz = r8.xyz * r7.xyz;
    r5.x = 2;
    r7.xy = r5.xx * r7.xy;
    r5.w = r7.x + r7.y;
    r5.x = r5.x * r7.z + r5.w;
    r5.x = r7.w * r8.w + r5.x;
    r7.xyzw = r0.wwww * float4(5.53599501,-9.15200043,-6.47589111,61.1948242) + float4(-11.8378601,10.3092651,4.02624512,-145.910889);
    r8.xyzw = r0.wwww * float4(7.6961751,-3.4555819,1.25262499,111.898743) + float4(-0.580742002,1.29448104,0.153258994,-27.0402374);
    r9.xy = r0.ww * float2(-74.6964722,-0.147002995) + float2(27.224762,0.147002995);
    r7.xyzw = r7.xyzw * r0.yyyy + r8.xyzw;
    r5.yz = r5.yz * r0.yy + r9.xy;
    r8.xyzw = cmp(r0.wwww >= float4(0.447221994,0.5,0.638889015,0.752777994));
    r9.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.yzw = cmp(r0.www >= float3(0.894443989,0.980556011,1));
    r10.xyz = r8.yzw ? float3(1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r7.xyz = r9.xyz * r7.xyz;
    r0.yw = r10.xy + r10.yz;
    r0.yw = float2(9.99999997e-007,9.99999997e-007) + r0.yw;
    r0.yw = float2(0.5,0.5) * r0.yw;
    r0.yw = frac(r0.yw);
    r0.yw = r0.yw * r5.yz;
    r5.y = 2;
    r5.zw = r5.yy * r7.xy;
    r0.yw = r0.yw + r0.yw;
    r5.z = r5.z + r5.w;
    r5.y = r5.y * r7.z + r5.z;
    r5.y = r7.w * r9.w + r5.y;
    r0.y = r0.y + r0.w;
    r0.w = r8.x ? r5.y : r5.x;
    r6.w = saturate(r8.y ? r0.y : r0.w);
    r0.yz = float2(1,0.5) + -r0.zz;
    r0.yz = saturate(r0.yz + r0.yz);
    r5.xyzw = float4(0.276300997,0.68946898,0.664768994,-0.171305999) * r0.yzyz;
    r0.yz = float2(0.873458028,-0.805382013) * r0.yz;
    r7.x = dot(float2(1,1), r5.xy);
    r7.y = dot(float2(1,1), r5.zw);
    r7.z = dot(float2(1,1), r0.yz);
    r5.xyz = float3(0.0342289992,0.0584720001,0.126542002) + r7.xyz;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r5.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r6.xy = r3.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r4.x = r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}