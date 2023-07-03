// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[0].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = (int)cb0[23].x;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = cb10[1].x + 0.25;
    r0.w = cmp(cb0[23].x < cb0[24].x);
    r0.w = r0.w ? cb0[23].x : 0;
    r0.zw = (int2)r0.zw;
    r0.z = (int)r0.w + (int)r0.z;
    r0.w = (uint)vThreadID.x;
    r1.y = cb0[19].x + r0.w;
    r0.w = cb0[21].x + r1.y;
    r0.w = (uint)r0.w;
    r2.x = (int)r0.w ^ 61;
    r0.w = (uint)r0.w >> 16;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = (int)r0.w * 9;
    r2.x = (uint)r0.w >> 4;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = (int)r0.w * 0x27d4eb2d;
    r2.x = (uint)r0.w >> 15;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.w;
    r3.xy = float2(2.32830644e-010,2.32830644e-010) * r2.yz;
    r4.xy = r2.zz * float2(6.92948199e-011,1.09139342e-009) + float2(0,-3.68749905);
    r5.xyz = cmp(r2.zzz >= float3(0,3.60777242e+009,4.2949673e+009));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r2.zw = r5.xy + r5.yz;
    r2.zw = float2(9.99999997e-007,9.99999997e-007) + r2.zw;
    r2.zw = float2(0.5,0.5) * r2.zw;
    r2.zw = frac(r2.zw);
    r2.zw = r2.zw * r4.xy;
    r2.zw = float2(2,2) * r2.zw;
    r2.z = r2.z + r2.w;
    r2.z = saturate(9.99999997e-007 + r2.z);
    r2.z = r2.z * 2.9000001 + 0.100000001;
    r4.xy = r2.yy * float2(1.29350461e-010,5.19842169e-010) + float2(0,-1.232705);
    r5.xyz = cmp(r2.yyy >= float3(0,3.15680102e+009,4.2949673e+009));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r2.yw = r5.xy + r5.yz;
    r2.yw = float2(9.99999997e-007,9.99999997e-007) + r2.yw;
    r2.yw = float2(0.5,0.5) * r2.yw;
    r2.yw = frac(r2.yw);
    r2.yw = r2.yw * r4.xy;
    r2.yw = float2(2,2) * r2.yw;
    r2.y = r2.y + r2.w;
    r2.y = saturate(9.99999997e-007 + r2.y);
    r2.y = r2.y * -50 + 60;
    r1.w = 2.32830644e-010 * r2.x;
    r4.xy = r2.xx * float2(1.00031032e-010,1.42802759e-009) + float2(0,-5.13333178);
    r5.xyz = cmp(r2.xxx >= float3(0,3.86547046e+009,4.2949673e+009));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r2.xw = r5.xy + r5.yz;
    r2.xw = float2(9.99999997e-007,9.99999997e-007) + r2.xw;
    r2.xyw = float3(0.5,0.0174529999,0.5) * r2.xyw;
    r2.xw = frac(r2.xw);
    r2.xw = r2.xw * r4.xy;
    r2.xw = float2(2,2) * r2.xw;
    r2.x = r2.x + r2.w;
    r2.x = saturate(9.99999997e-007 + r2.x);
    r1.z = r2.x * 0.300000012 + 0.200000003;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = 1.46291812e-009 * r0.w;
    sincos(r0.w, r2.x, r4.x);
    r5.y = r2.x * r3.y;
    r5.z = r4.x * r3.y;
    sincos(r2.y, r2.x, r4.x);
    r0.w = dot(r5.yz, r5.yz);
    r0.w = sqrt(r0.w);
    r0.w = max(9.99999975e-005, r0.w);
    r2.yw = r5.yz / r0.ww;
    r4.yz = r2.yw * r2.xx;
    r2.xyz = r4.xyz * r2.zzz;
    r4.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r4.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r4.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r4.w = -r0.w;
    r6.xyz = cb9[r0.z+0].xyz;
    r6.w = 0;
    r4.xyzw = cb9[r0.z+32].wwww * r6.xyzw + r4.xyzw;
    r6.xyz = -cb9[r0.z+32].zxy * r4.yzx;
    r6.xyz = -cb9[r0.z+32].yzx * r4.zxy + -r6.xyz;
    r4.xyz = cb9[r0.z+32].www * r4.xyz + r6.xyz;
    r4.xyz = r4.www * -cb9[r0.z+32].xyz + r4.xyz;
    r6.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r6.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r6.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r7.w = -r0.w;
    r7.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r6.xyz;
    r6.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = cb9[r0.y+32].wwww * r6.xyzw + r7.xyzw;
    r7.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r7.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r7.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r7.w = -r0.w;
    r8.xyz = cb9[r0.y+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.z+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.z+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.z+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.z+32].www * r7.xyz + r8.xyz;
    r0.yzw = r7.www * -cb9[r0.z+32].xyz + r7.xyz;
    r0.yzw = -r4.xyz + r0.yzw;
    r5.xw = float2(0,0);
    r4.xyz = -r6.yzx * r5.zwy;
    r4.xyz = r5.yzw * -r6.zxy + -r4.xyz;
    r2.w = dot(r5.yz, -r6.yz);
    r4.w = -r2.w;
    r4.xyzw = r6.wwww * r5.xyzw + r4.xyzw;
    r5.xyz = r6.zxy * r4.yzx;
    r5.xyz = r6.yzx * r4.zxy + -r5.xyz;
    r4.xyz = r6.www * r4.xyz + r5.xyz;
    r4.xyz = r4.www * r6.xyz + r4.xyz;
    r4.xyz = r4.xyz + r0.yzw;
    r0.yzw = -r6.yzx * r2.zxy;
    r5.xyz = r2.yzx * -r6.zxy + -r0.yzw;
    r0.y = dot(r2.xyz, -r6.xyz);
    r5.w = -r0.y;
    r2.xyz = r6.www * r2.xyz;
    r2.w = 0;
    r2.xyzw = r5.xyzw + r2.xyzw;
    r0.yzw = r6.zxy * r2.yzx;
    r0.yzw = r6.yzx * r2.zxy + -r0.yzw;
    r0.yzw = r6.www * r2.xyz + r0.yzw;
    r2.xyz = r2.www * r6.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r2.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
    r3.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r3.xyzw
  }
  return;
}