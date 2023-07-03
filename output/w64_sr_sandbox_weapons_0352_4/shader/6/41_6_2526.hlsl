// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[1].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = (uint)vThreadID.x;
    r1.w = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.w;
    r0.z = (uint)r0.z;
    r0.w = (int)r0.z ^ 61;
    r0.z = (uint)r0.z >> 16;
    r0.z = (int)r0.z ^ (int)r0.w;
    r0.z = (int)r0.z * 9;
    r0.w = (uint)r0.z >> 4;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = (int)r0.z * 0x27d4eb2d;
    r0.w = (uint)r0.z >> 15;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.z;
    r3.zw = float2(2.32830644e-010,2.32830644e-010) * r2.xy;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.z;
    r5.x = 2.32830644e-010 * r4.y;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.z;
    r5.y = 2.32830644e-010 * r4.y;
    r3.y = 2.32830644e-010 * r0.w;
    r0.w = r0.w * 2.32830644e-009 + 3;
    r2.x = r2.x * 2.32830644e-010 + r3.w;
    r4.y = 0.5 * r2.x;
    r4.zw = r2.xx * float2(0.411428511,-13.3842888) + float2(-0.196070999,65.2928772);
    r6.xy = r2.xx * float2(0.125,-25.1400146) + float2(0,12.7557182);
    r4.y = r4.y * r4.y;
    r4.yz = r4.zw * r4.yy + r6.xy;
    r6.xyz = cmp(r2.xxx >= float3(0,1.33333397,2));
    r6.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyw + r6.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r4.yz = r6.xy * r4.yz;
    r4.yz = float2(2,2) * r4.yz;
    r2.x = r4.y + r4.z;
    r2.x = r6.z * 2 + r2.x;
    r2.x = saturate(r6.w * 1 + r2.x);
    r2.x = r2.x * 10 + 3;
    r6.xyz = float3(2.32830644e-010,2.32830644e-010,2.32830644e-010) * r2.yzw;
    r4.y = r2.y * 0.000229779413 + -246723.766;
    r7.xyz = cmp(r2.yyy >= float3(1.07374182e+009,1.07374618e+009,4.2949673e+009));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r4.zw = r7.xy + r7.yz;
    r4.zw = float2(9.99999997e-007,9.99999997e-007) + r4.zw;
    r4.zw = float2(0.5,0.5) * r4.zw;
    r7.yz = frac(r4.zw);
    r7.x = r7.y * r4.y;
    r4.yz = r7.xz + r7.xz;
    r2.y = saturate(r4.y + r4.z);
    r2.x = r2.x + -r0.w;
    r0.w = r2.y * r2.x + r0.w;
    r2.x = r2.z * -9.76386957e-011 + 1.41935503;
    r2.z = r6.y * r6.y;
    r2.x = r2.x * r2.z;
    r2.x = min(1, r2.x);
    r2.x = r2.x * 10 + -110;
    r2.x = r2.y * r2.x + 120;
    r6.w = 2.32830644e-010 * r4.x;
    r3.x = r4.x * 4.65661287e-010 + 0.5;
    r2.y = cb10[0].x + 0.25;
    r2.y = (int)r2.y;
    r4.xy = cb0[4].xy + r3.zw;
    r4.xy = r4.xy * float2(18.9452477,6.99969196) + float2(3.25,0.133332998);
    r4.xy = floor(r4.xy);
    r2.z = dot(r4.xxxx, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r2.z = frac(r2.z);
    r2.z = r2.z * r2.z;
    r2.xz = float2(0.0174529999,251) * r2.xz;
    r2.z = frac(r2.z);
    r2.z = -0.5 + r2.z;
    r4.x = r2.w * 0.000229779413 + -246723.766;
    r7.xyz = cmp(r2.www >= float3(1.07374182e+009,1.07374618e+009,4.2949673e+009));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r4.zw = r7.xy + r7.yz;
    r4.zw = float2(9.99999997e-007,9.99999997e-007) + r4.zw;
    r4.zw = float2(0.5,0.5) * r4.zw;
    r7.yz = frac(r4.zw);
    r7.x = r7.y * r4.x;
    r4.xz = r7.xz + r7.xz;
    r2.w = saturate(r4.x + r4.z);
    r2.z = r2.z * r2.w;
    r2.z = 3.1415925 * r2.z;
    sincos(r2.z, r4.x, r7.x);
    r8.xyz = float3(0,0,1) * r4.xxx;
    r2.z = dot(r4.yyyy, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r2.z = frac(r2.z);
    r2.z = r2.z * r2.z;
    r2.z = 251 * r2.z;
    r2.z = frac(r2.z);
    r2.z = r2.z * 0.5 + 0.5;
    r2.z = r2.z * r2.w;
    r2.z = 3.1415925 * r2.z;
    sincos(r2.z, r4.x, r9.x);
    r4.xyz = float3(1,0,0) * r4.xxx;
    r7.yzw = -cb9[r2.y+32].zxy * cb9[r2.y+32].yzx;
    r7.yzw = -cb9[r2.y+32].yzx * cb9[r2.y+32].zxy + -r7.yzw;
    r2.z = dot(-cb9[r2.y+32].xyz, cb9[r2.y+32].xyz);
    r10.w = -r2.z;
    r10.xyz = cb9[r2.y+32].www * cb9[r2.y+32].xyz + r7.yzw;
    r11.xyzw = cb9[r2.y+32].xyzw * float4(-1,-1,-1,1);
    r10.xyzw = cb9[r2.y+32].wwww * r11.xyzw + r10.xyzw;
    r12.xyzw = r10.zxyz * r8.yzyz;
    r7.yzw = -r8.zyy * r10.yzx + r12.xyz;
    r12.w = -r12.w;
    r12.xyz = r7.xxx * r10.xyz + r7.yzw;
    r8.w = r7.x;
    r7.xyzw = r10.wwww * r8.xyzw + r12.xyzw;
    r8.xyz = cb9[r2.y+32].zxy * r7.yzx;
    r8.xyz = cb9[r2.y+32].yzx * r7.zxy + -r8.xyz;
    r2.z = dot(cb9[r2.y+32].xyz, r7.xyz);
    r10.w = -r2.z;
    r10.xyz = cb9[r2.y+32].www * r7.xyz + r8.xyz;
    r7.xyzw = r7.wwww * cb9[r2.y+32].xyzw + r10.xyzw;
    r8.xyz = -cb9[r2.y+32].zxy * r7.yzx;
    r8.xyz = -cb9[r2.y+32].yzx * r7.zxy + -r8.xyz;
    r2.z = dot(-cb9[r2.y+32].xyz, r7.xyz);
    r10.w = -r2.z;
    r10.xyz = cb9[r2.y+32].www * r7.xyz + r8.xyz;
    r7.xyzw = r7.wwww * r11.xyzw + r10.xyzw;
    r8.xyzw = r7.zxyx * r4.zzxx;
    r8.xyz = -r4.zxz * r7.yzx + r8.xyz;
    r10.w = -r8.w;
    r10.xyz = r9.xxx * r7.xyz + r8.xyz;
    r4.w = r9.x;
    r4.xyzw = r7.wwww * r4.xyzw + r10.xyzw;
    r7.xyz = cb9[r2.y+32].zxy * r4.yzx;
    r7.xyz = cb9[r2.y+32].yzx * r4.zxy + -r7.xyz;
    r2.z = dot(cb9[r2.y+32].xyz, r4.xyz);
    r8.w = -r2.z;
    r8.xyz = cb9[r2.y+32].www * r4.xyz + r7.xyz;
    r4.xyzw = r4.wwww * cb9[r2.y+32].xyzw + r8.xyzw;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.z;
    r2.z = 1.46291812e-009 * r2.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = r0.z * r2.x;
    r0.z = 2.32830644e-010 * r0.z;
    sincos(r0.z, r2.x, r7.x);
    sincos(r2.z, r8.x, r9.x);
    r7.y = r8.x * r2.x;
    r7.z = r9.x * r2.x;
    r2.xzw = r7.xyz * r0.www;
    r7.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r7.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r7.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r7.w = -r0.z;
    r8.xyz = cb9[r0.y+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.y+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.y+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.y+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * -cb9[r0.y+32].xyz + r7.xyz;
    r8.xyz = -cb9[r0.y+32].zxy * r4.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r4.zxy + -r8.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r4.xyz);
    r9.w = -r0.z;
    r9.xyz = cb9[r0.y+32].www * r4.xyz + r8.xyz;
    r8.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r4.xyzw = r4.wwww * r8.xyzw + r9.xyzw;
    r8.xyz = cb9[r0.y+32].yzx * cb9[r2.y+0].zxy;
    r8.xyz = cb9[r2.y+0].yzx * cb9[r0.y+32].zxy + -r8.xyz;
    r0.z = dot(cb9[r2.y+0].xyz, cb9[r0.y+32].xyz);
    r8.w = -r0.z;
    r9.xyz = cb9[r2.y+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.y+32].wwww * r9.xyzw + r8.xyzw;
    r9.xyz = -cb9[r0.y+32].zxy * r8.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r8.zxy + -r9.xyz;
    r8.xyz = cb9[r0.y+32].www * r8.xyz + r9.xyz;
    r0.yzw = r8.www * -cb9[r0.y+32].xyz + r8.xyz;
    r7.xyz = -r7.xyz + r0.yzw;
    r0.yzw = -r4.yzx * r2.wxz;
    r8.xyz = r2.zwx * -r4.zxy + -r0.yzw;
    r0.y = dot(r2.xzw, -r4.xyz);
    r8.w = -r0.y;
    r2.xyz = r4.www * r2.xzw;
    r2.w = 0;
    r2.xyzw = r8.xyzw + r2.xyzw;
    r0.yzw = r4.zxy * r2.yzx;
    r0.yzw = r4.yzx * r2.zxy + -r0.yzw;
    r0.yzw = r4.www * r2.xyz + r0.yzw;
    r2.xyz = r2.www * r4.xyz + r0.yzw;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r2.w = 100000;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r2.xyzw
    r2.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r7.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r7.xyzw
    r1.xyz = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.zzzz, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.wwww, r6.xyzw
    r0.y = (int)r0.x + 5;
    r5.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
  }
  return;
}