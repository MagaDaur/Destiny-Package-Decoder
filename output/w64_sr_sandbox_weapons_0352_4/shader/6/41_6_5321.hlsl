// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:28 2023
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
    r3.x = 2.32830644e-010 * r2.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r3.y = 2.32830644e-010 * r2.y;
    r2.zw = r2.yy * float2(1.38044587e-009,-8.79145229e-011) + float2(5.15234423,1.53819501);
    r4.xyzw = r2.yyyy * float4(-9.31322353e-010,-4.52534538e-010,8.60374172e-009,1.76057224e-011) + float4(1,0.783016026,-0.188160002,0.362776995);
    r5.x = r3.y * r3.y;
    r2.zw = r2.zw * r5.xx + r4.xy;
    r5.yzw = cmp(r2.yyy >= float3(0,816043776,4.2949673e+009));
    r5.yzw = r5.yzw ? float3(1,1,1) : 0;
    r4.xy = r5.yz + r5.zw;
    r4.xy = float2(9.99999997e-007,9.99999997e-007) + r4.xy;
    r4.xy = float2(0.5,0.5) * r4.xy;
    r4.xy = frac(r4.xy);
    r4.xy = r4.xy + r4.xy;
    r2.zw = r4.xy * r2.zw;
    r2.z = saturate(r2.z + r2.w);
    r2.z = r2.z * 7.25 + 2.75;
    r1.w = 2.32830644e-010 * r2.x;
    r5.yz = r2.xx * float2(3.81434475e-008,2.84886923e-011) + float2(-39.560833,0.246237993);
    r6.xy = r2.xx * float2(-4.22544555e-010,-2.00129344e-010) + float2(1,0.490952998);
    r2.w = r1.w * r1.w;
    r5.yz = r5.yz * r2.ww + r6.xy;
    r6.xyz = cmp(r2.xxx >= float3(0,744459584,4.2949673e+009));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r2.xw = r6.xy + r6.yz;
    r2.xw = float2(9.99999997e-007,9.99999997e-007) + r2.xw;
    r2.xw = float2(0.5,0.5) * r2.xw;
    r2.xw = frac(r2.xw);
    r2.xw = r2.xw * r5.yz;
    r2.xw = r2.xw + r2.xw;
    r2.x = saturate(r2.x + r2.w);
    r2.x = 0.349059999 * r2.x;
    r2.yw = r2.yy * float2(-1.10288201e-009,-2.21747912e-010) + float2(1,0.514007986);
    r2.yw = r4.zw * r5.xx + r2.yw;
    r2.yw = r2.yw * r4.xy;
    r2.y = saturate(r2.y + r2.w);
    r1.z = r2.y * 0.290000021 + 0.135000005;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r2.y = 1.46291812e-009 * r2.y;
    sincos(r2.y, r4.x, r5.x);
    r4.y = 0.0149999997 * r4.x;
    r4.z = 0.0149999997 * r5.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r2.y = 1.46291812e-009 * r2.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = r0.w * r2.x;
    r0.w = 2.32830644e-010 * r0.w;
    sincos(r0.w, r2.x, r5.x);
    sincos(r2.y, r6.x, r7.x);
    r5.y = r6.x * r2.x;
    r5.z = r7.x * r2.x;
    r2.xyz = r5.xyz * r2.zzz;
    r5.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r5.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r5.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r5.w = -r0.w;
    r6.xyz = cb9[r0.z+0].xyz;
    r6.w = 0;
    r5.xyzw = cb9[r0.z+32].wwww * r6.xyzw + r5.xyzw;
    r6.xyz = -cb9[r0.z+32].zxy * r5.yzx;
    r6.xyz = -cb9[r0.z+32].yzx * r5.zxy + -r6.xyz;
    r5.xyz = cb9[r0.z+32].www * r5.xyz + r6.xyz;
    r5.xyz = r5.www * -cb9[r0.z+32].xyz + r5.xyz;
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
    r0.yzw = -r5.xyz + r0.yzw;
    r4.xw = float2(0,0);
    r5.xyz = -r6.yzx * r4.zwy;
    r5.xyz = r4.yzw * -r6.zxy + -r5.xyz;
    r2.w = dot(r4.yz, -r6.yz);
    r5.w = -r2.w;
    r4.xyzw = r6.wwww * r4.xyzw + r5.xyzw;
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