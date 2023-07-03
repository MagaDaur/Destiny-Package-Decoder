// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:16 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[2].x + 0.25;
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
    r1.w = 2.32830644e-010 * r2.x;
    r2.yzw = r2.xxx * float3(5.45119401e-011,1.65035829e-009,-2.32830644e-010) + float3(0,-5.75745106,4);
    r3.xyzw = cmp(r2.xxxx >= float4(0,3.60777242e+009,4.09453414e+009,4.2949673e+009));
    r3.xyzw = r3.xyzw ? float4(1,1,1,1) : 0;
    r3.xyz = r3.xyz + r3.yzw;
    r3.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) * r3.xyz;
    r3.xyz = frac(r3.xyz);
    r2.yz = r3.xy * r2.yz;
    r2.yz = r2.yz + r2.yz;
    r2.y = r2.y + r2.z;
    r2.y = saturate(r3.z * 2 + r2.y);
    r2.y = r2.y * 6 + 2;
    r2.x = r2.x * 4.65661287e-010 + 2;
    r2.z = saturate(cb0[4].x * 2 + -1);
    r2.z = r2.z * 2.5 + 0.5;
    r1.z = r2.x * r2.z;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = 1.46291812e-009 * r0.w;
    sincos(r0.w, r2.x, r3.x);
    r4.y = r2.x * r2.w;
    r4.z = r3.x * r2.w;
    r2.xyz = float3(1,0,0) * r2.yyy;
    r3.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r3.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r3.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r3.w = -r0.w;
    r5.xyz = cb9[r0.z+0].xyz;
    r5.w = 0;
    r3.xyzw = cb9[r0.z+32].wwww * r5.xyzw + r3.xyzw;
    r5.xyz = -cb9[r0.z+32].zxy * r3.yzx;
    r5.xyz = -cb9[r0.z+32].yzx * r3.zxy + -r5.xyz;
    r3.xyz = cb9[r0.z+32].www * r3.xyz + r5.xyz;
    r3.xyz = r3.www * -cb9[r0.z+32].xyz + r3.xyz;
    r5.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r5.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r5.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r6.w = -r0.w;
    r6.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r5.xyz;
    r5.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r5.xyzw = cb9[r0.y+32].wwww * r5.xyzw + r6.xyzw;
    r6.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r6.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r6.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r6.w = -r0.w;
    r7.xyz = cb9[r0.y+0].xyz;
    r7.w = 0;
    r6.xyzw = cb9[r0.z+32].wwww * r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r0.z+32].zxy * r6.yzx;
    r7.xyz = -cb9[r0.z+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.z+32].www * r6.xyz + r7.xyz;
    r0.yzw = r6.www * -cb9[r0.z+32].xyz + r6.xyz;
    r0.yzw = -r3.xyz + r0.yzw;
    r4.xw = float2(0,0);
    r3.xyz = -r5.yzx * r4.zwy;
    r3.xyz = r4.yzw * -r5.zxy + -r3.xyz;
    r2.w = dot(r4.yz, -r5.yz);
    r3.w = -r2.w;
    r3.xyzw = r5.wwww * r4.xyzw + r3.xyzw;
    r4.xyz = r5.zxy * r3.yzx;
    r4.xyz = r5.yzx * r3.zxy + -r4.xyz;
    r3.xyz = r5.www * r3.xyz + r4.xyz;
    r3.xyz = r3.www * r5.xyz + r3.xyz;
    r3.xyz = r3.xyz + r0.yzw;
    r4.xyzw = -r5.zxyx * r2.zzxx;
    r6.xyz = -r2.zxz * -r5.yzx + r4.xyz;
    r6.w = -r4.w;
    r2.xyz = r5.www * r2.xyz;
    r2.w = 0;
    r2.xyzw = r6.xyzw + r2.xyzw;
    r0.yzw = r5.zxy * r2.yzx;
    r0.yzw = r5.yzx * r2.zxy + -r0.yzw;
    r0.yzw = r5.www * r2.xyz + r0.yzw;
    r2.xyz = r2.www * r5.xyz + r0.yzw;
    r0.x = mad(3, (int)vThreadID.x, (int)r0.x);
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r2.xyzw
    r0.yz = (int2)r0.xx + int2(1,2);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r3.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
  }
  return;
}